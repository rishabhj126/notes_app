import 'package:notes/src/comman/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, void>> login(String email, String password);
  Future<Either<Failure, void>> signUp(String email, String password);
}
