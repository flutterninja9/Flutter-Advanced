import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'package:domain_driven_design/domain/notes/i_notes_repository.dart';
import 'package:domain_driven_design/domain/notes/note.dart';
import 'package:domain_driven_design/domain/notes/note_failure.dart';
import 'package:domain_driven_design/infrastructure/core/firestore_helper.dart';
import 'note_dtos.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  /// We aren't using another layer of abstraction like we did in TDD
  /// because Firestore already does handle all those things for us
  /// But if we were in a situation where we had to deal with Caching and REST API calls
  /// then it is best suited to not keep the clients here directly
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);
  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()

        /// There is no possibility of errors here as Firestore sends only
        /// error-free data, So we can always return right()
        /// But incase of REST services/other-local-services we should
        /// have handled the exception mess here
        /// Currently due to stream using RxDart for the exception mapping thing
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()

        /// There is no possibility of errors here as Firestore sends only
        /// error-free data, So we can always return right()
        /// But incase of REST services/other-local-services we should
        /// have handled the exception mess here
        /// Currently due to stream using RxDart for the exception mapping thing
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => NoteDto.fromFirestore(doc).toDomain()),
        )
        // Filtering process
        .map((notes) => right<NoteFailure, KtList<Note>>(
              notes
                  .where((note) => note.todos
                      .getOrCrash()
                      .any((noteStatus) => !noteStatus.done))
                  .toImmutableList(),
            ))
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return const Left(NoteFailure.insufficientPermission());
      } else {
        return const Left(NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return const Left(NoteFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return const Left(NoteFailure.unableToUpdate());
      } else {
        return const Left(NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.uniqueId.getOrCrash();
      await userDoc.noteCollection.doc(noteId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return const Left(NoteFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return const Left(NoteFailure.unableToUpdate());
      } else {
        return const Left(NoteFailure.unexpected());
      }
    }
  }
}
