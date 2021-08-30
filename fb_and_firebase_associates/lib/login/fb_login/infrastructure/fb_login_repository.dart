import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FbLoginRepository implements LoginRepository {
  final FacebookAuth _auth;

  FbLoginRepository(this._auth);

  @override
  Future<Either<AuthFailure, String>> login() async {
    try {
      final result = await _auth.login();
      if (result.status == LoginStatus.success) {
        return right(result.accessToken!.token);
      }
      if (result.status == LoginStatus.failed) {
        return left(AuthFailure(message: "Login Failed"));
      } else {
        return left(AuthFailure(message: ""));
      }
    } on Exception catch (e) {
      return left(AuthFailure(message: "The error is $e"));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logOut() async {
    try {
      await _auth.logOut();
      return right(unit);
    } on Exception catch (e) {
      return left(AuthFailure(message: "the error is $e"));
    }
  }
}
