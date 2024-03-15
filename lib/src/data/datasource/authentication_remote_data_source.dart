import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthenticationRemoteDataSource {
  Future<void> login(String email, String password);
  Future<void> signUp(String email, String password);
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<void> login(String email, String password) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final uid = response.user?.uid ?? "";
      await prefs.setString(USER_ID, uid);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = response.user?.uid ?? "";
      await prefs.setString(USER_ID, uid);
    } catch (e) {
      rethrow;
    }
  }
}
