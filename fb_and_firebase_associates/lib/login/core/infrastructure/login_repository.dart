import 'package:dartz/dartz.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';

abstract class LoginRepository {
  Future<Either<AuthFailure, String>> login();

  Future<Either<AuthFailure, Unit>> signOut();
}
