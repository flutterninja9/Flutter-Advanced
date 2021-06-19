part of 'notes_watcher_bloc.dart';

@freezed
class NotesWatcherEvent with _$NotesWatcherEvent {
  /// or in layman terms "Start Watching All Notes"
  const factory NotesWatcherEvent.watchAllStarted() = _WatchAllStarted;

  /// or in layman terms "Start Watching incomplete Notes"
  const factory NotesWatcherEvent.watchIncompleteStarted() =
      _watchIncompleteStarted;

  /// trigger for recieving notes
  const factory NotesWatcherEvent.notesRecieved(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _NotesRecieved;
}
