import 'dart:io';
import 'package:notes/src/comman/exception.dart';
import 'package:notes/src/comman/failure.dart';
import 'package:notes/src/data/datasource/note_remote_data_source.dart';
import 'package:notes/src/data/model/note_data_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:notes/src/domain/repositories/note_repository.dart';

class NoteRepositoryImpl extends NoteRepository {
  NoteRepositoryImpl(this.dataSource);
  final NoteRemoteDataSource dataSource;
  @override
  Future<Either<Failure, List<NoteDataModel>>> getNotes() async {
    try {
      final result = await dataSource.getNotes();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occured Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, NoteDataModel>> addNote(NoteDataModel note) async {
    try {
      final result = await dataSource.addNote(note);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occured Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, NoteDataModel>> updateNote(NoteDataModel note) async {
    try {
      final result = await dataSource.updateNote(note);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occured Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteNote(String noteId) async {
    try {
      final result = await dataSource.deleteNote(noteId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occured Please try again',
        ),
      );
    }
  }
}
