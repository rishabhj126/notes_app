import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes/src/comman/exception.dart';
import 'package:notes/src/comman/failure.dart';
import 'package:notes/src/data/datasource/authentication_remote_data_source.dart';
import 'package:notes/src/domain/repositories/autentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl(this.dataSource);
  final AuthenticationRemoteDataSource dataSource;
  @override
  Future<Either<Failure, void>> login(
    String email,
    String password,
  ) async {
    try {
      final result = await dataSource.login(email, password);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(
        ServerFailure(
          e.message ?? 'Error occured Please try again',
        ),
      );
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
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signUp(String email, String password) async {
    try {
      final result = await dataSource.signUp(email, password);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(
        ServerFailure(
          e.message ?? 'Error occured Please try again',
        ),
      );
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
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
