import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/notes/note.dart';
import 'package:domain_driven_design/domain/notes/note_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Stream<Either<NoteFailure, Unit>> create(Note note);
  Stream<Either<NoteFailure, Unit>> update(Note note);
  Stream<Either<NoteFailure, Unit>> delete(Note note);
}
