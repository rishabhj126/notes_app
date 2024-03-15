part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial() = _Initial;
  const factory NoteState.loading() = _Loading;
  const factory NoteState.noNotes() = _NoNotes;
  const factory NoteState.notesLoaded({
    required List<NoteDataModel> notes,
  }) = _NotesLoaded;
  const factory NoteState.error() = _Error;
  const factory NoteState.noteAdded() = _NoteAdded;
  const factory NoteState.noteUpdated() = _NoteUpdated;
  const factory NoteState.noteDeleted() = _NoteDeleted;
}
