part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  // const factory NoteFormEvent.initialized(Note? note) = _Initialized;
  const factory NoteFormEvent.initialized(Option<Note> initialNoteOption) =
      _Initialized;
  const factory NoteFormEvent.bodyChanged(String body) = _BodyChanged;
  const factory NoteFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory NoteFormEvent.todosChanged(KtList<TodoItemPrimitive> todos) =
      _TodosChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
