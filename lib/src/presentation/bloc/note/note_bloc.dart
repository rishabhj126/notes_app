import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/src/comman/toast.dart';
import 'package:notes/src/data/model/note_data_model.dart';
import 'package:notes/src/domain/usecase/note.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  List<NoteDataModel> notesList = [];
  NoteBloc(this._noteUseCase) : super(const NoteState.initial()) {
    on<NoteEvent>((event, emit) async {
      await event.map(started: (_Started value) async {
        emit(const NoteState.loading());

        final result = await _noteUseCase.getNotes();

        result.fold(
          (f) => emit(
            const NoteState.error(),
          ),
          (notes) {
            if (notes.isNotEmpty) {
              notesList = notes;
              emit(NoteState.notesLoaded(notes: notes));
            } else {
              emit(const NoteState.noNotes());
            }
          },
        );
      }, addNote: (_AddNote value) async {
        emit(const NoteState.loading());

        final result = await _noteUseCase.addNote(NoteDataModel(
            title: value.title,
            body: value.body,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now()));

        result.fold(
          (f) => emit(
            const NoteState.error(),
          ),
          (note) {
            emit(const NoteState.noteAdded());
            showToast(msg: "Note Added");
            updateNoteInList(note, emit);
          },
        );
      }, updateNote: (_UpdateNote value) async {
        emit(const NoteState.loading());

        final result = await _noteUseCase
            .updateNote(value.note.copyWith(updatedAt: DateTime.now()));

        result.fold(
          (f) => emit(
            const NoteState.error(),
          ),
          (note) {
            emit(const NoteState.noteUpdated());
            showToast(msg: "Note Updated");
            updateNoteInList(note, emit);
          },
        );
      }, deleteNote: (_DeleteNote value) async {
        emit(const NoteState.loading());

        final result = await _noteUseCase.deleteNote(value.noteId);

        result.fold(
          (f) => emit(
            const NoteState.error(),
          ),
          (note) {
            emit(const NoteState.noteDeleted());
            showToast(msg: "Note Deleted");
            deleteNoteFromList(value.noteId, emit);
          },
        );
      });
    });
  }

  void updateNoteInList(NoteDataModel note, Emitter<NoteState> emit) {
    bool containNote = notesList
        .where(
          (element) => element.id == note.id,
        )
        .isNotEmpty;
    if (containNote) {
      notesList.removeWhere(
        (element) => element.id == note.id,
      );
    }
    notesList.add(note);
    emit(NoteState.notesLoaded(notes: notesList));
  }

  void deleteNoteFromList(String noteId, Emitter<NoteState> emit) {
    notesList.removeWhere((element) => element.id == noteId);
    if (notesList.isNotEmpty) {
      emit(NoteState.notesLoaded(notes: notesList));
    } else {
      emit(const NoteState.noNotes());
    }
  }

  final Note _noteUseCase;
}
