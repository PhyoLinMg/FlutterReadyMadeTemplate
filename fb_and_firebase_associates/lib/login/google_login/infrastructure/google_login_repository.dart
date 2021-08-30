import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginRepository implements LoginRepository {
  final GoogleSignIn _googleSignIn;

  GoogleLoginRepository(this._googleSignIn);
  @override
  Future<Either<AuthFailure, String>> login() async {
    try {
      final googleSignAccount = await _googleSignIn.signIn();
      final googleSignInAuthentication =
          await googleSignAccount!.authentication;
      return right(googleSignInAuthentication.accessToken!);
    } catch (error) {
      return left(AuthFailure(message: "the error is $error"));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logOut() async {
    try {
      await _googleSignIn.signOut();
      return right(unit);
    } catch (error) {
      return left(AuthFailure(message: "the error is $error"));
    }
  }
}
