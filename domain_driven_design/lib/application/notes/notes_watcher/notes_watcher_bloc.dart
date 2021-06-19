import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/notes/i_notes_repository.dart';
import 'package:domain_driven_design/domain/notes/note.dart';
import 'package:domain_driven_design/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'notes_watcher_event.dart';
part 'notes_watcher_state.dart';
part 'notes_watcher_bloc.freezed.dart';

@injectable
class NotesWatcherBloc extends Bloc<NotesWatcherEvent, NotesWatcherState> {
  final INoteRepository _repository;
  NotesWatcherBloc(this._repository) : super(const NotesWatcherState.initial());

  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _notesStreamSubstription;

  @override
  Stream<NotesWatcherState> mapEventToState(
    NotesWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NotesWatcherState.loadInProgress();

        /// closes the watchIncompleted stream if listening to it
        await _notesStreamSubstription?.cancel();

        /// through this way, we are transferring the streamed response
        /// to the other state in form of triggering a helper event
        /// which we just created
        /// in this way, Bloc will also not stop and it would be able to
        /// easily redirect its calls
        _notesStreamSubstription = _repository.watchAll().listen(
              (failureOrNotes) => add(
                NotesWatcherEvent.notesRecieved(failureOrNotes),
              ),
            );
      },
      watchIncompleteStarted: (e) async* {
        yield const NotesWatcherState.loadInProgress();

        /// closes the watchAll stream if listening to it
        await _notesStreamSubstription?.cancel();
        _notesStreamSubstription = _repository.watchUncompleted().listen(
              (failureOrNotes) => add(
                NotesWatcherEvent.notesRecieved(failureOrNotes),
              ),
            );
      },

      /// helper event managemer, which helps in transforming calls
      /// to continues data emitting states
      notesRecieved: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => NotesWatcherState.loadFailure(f),
          (notes) => NotesWatcherState.loadSuccess(notes),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _notesStreamSubstription?.cancel();
    return super.close();
  }
}
