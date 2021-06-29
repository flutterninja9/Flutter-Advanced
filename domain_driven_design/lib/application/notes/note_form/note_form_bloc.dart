import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/notes/i_notes_repository.dart';
import 'package:domain_driven_design/domain/notes/note.dart';
import 'package:domain_driven_design/domain/notes/note_failure.dart';
import 'package:domain_driven_design/domain/notes/value_objects.dart';
import 'package:domain_driven_design/presentation/notes/notes_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_form_bloc.freezed.dart';
part 'note_form_event.dart';
part 'note_form_state.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
          /// When user starts a fresh note
          () => state,

          /// When user click on a pre-made note for editing purpose
          (initialNote) => state.copyWith(note: initialNote, isEditing: true),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(body: NoteBody(e.body)),
          saveFailureOrSuccessOption: none(),
        );
      },
      colorChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(noteColor: NoteColor(e.color)),
          saveFailureOrSuccessOption: none(),
        );
      },
      todosChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            todos: List3(e.todos.map(
              (todoPrimitive) => todoPrimitive.toDomain(),
            )),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<NoteFailure, Unit>? failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        /// note is error free and we can save it
        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
