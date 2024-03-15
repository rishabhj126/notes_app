import 'package:notes/src/comman/failure.dart';
import 'package:notes/src/data/model/note_data_model.dart';
import 'package:notes/src/domain/repositories/autentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:notes/src/domain/repositories/note_repository.dart';

class Note {
  Note(this._repository);
  final NoteRepository _repository;

  Future<Either<Failure, List<NoteDataModel>>> getNotes() async {
    return await _repository.getNotes();
  }

  Future<Either<Failure, NoteDataModel>> addNote(NoteDataModel note) async {
    return await _repository.addNote(note);
  }

  Future<Either<Failure, NoteDataModel>> updateNote(NoteDataModel note) async {
    return await _repository.updateNote(note);
  }

  Future<Either<Failure, void>> deleteNote(String noteId) async {
    return await _repository.deleteNote(noteId);
  }
}
