import 'package:dartz/dartz.dart';
import 'package:notes/src/comman/failure.dart';
import 'package:notes/src/data/model/note_data_model.dart';

abstract class NoteRepository {
  Future<Either<Failure, List<NoteDataModel>>> getNotes();
  Future<Either<Failure, NoteDataModel>> addNote(NoteDataModel note);
  Future<Either<Failure, NoteDataModel>> updateNote(NoteDataModel note);
  Future<Either<Failure, void>> deleteNote(String noteId);
}
