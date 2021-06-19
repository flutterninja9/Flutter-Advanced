import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain_driven_design/domain/notes/i_notes_repository.dart';
import 'package:domain_driven_design/domain/notes/note.dart';
import 'package:domain_driven_design/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_actor_event.dart';
part 'notes_actor_state.dart';
part 'notes_actor_bloc.freezed.dart';

@injectable
class NotesActorBloc extends Bloc<NotesActorEvent, NotesActorState> {
  final INoteRepository _repository;
  NotesActorBloc(this._repository) : super(const NotesActorState.initial());

  @override
  Stream<NotesActorState> mapEventToState(
    NotesActorEvent event,
  ) async* {
    yield const NotesActorState.actionInProgress();
    final possibleFailure = await _repository.delete(event.note);
    yield possibleFailure.fold(
      (f) => const NotesActorState.deleteFailure(NoteFailure.unexpected()),
      (_) => const NotesActorState.deleteSuccess(),
    );
  }
}
