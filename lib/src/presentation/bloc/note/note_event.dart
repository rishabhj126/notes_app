part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.started() = _Started;
  const factory NoteEvent.addNote(
      {required String title, required String body}) = _AddNote;
  const factory NoteEvent.updateNote({required NoteDataModel note}) =
      _UpdateNote;
  const factory NoteEvent.deleteNote({required String noteId}) = _DeleteNote;
}
