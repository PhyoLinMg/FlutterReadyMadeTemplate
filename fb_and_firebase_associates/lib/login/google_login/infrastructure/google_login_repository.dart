import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginRepository implements LoginRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  GoogleLoginRepository(this._firebaseAuth, this._googleSignIn);
  @override
  Future<Either<AuthFailure, String?>> login() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      print("This is google signin $googleSignInAccount");
      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;
      print(
          "this is google signinauthentication access token ${googleSignInAuthentication?.accessToken}");
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken,
      );
      print("this is credential $credential");

      return right(googleSignInAuthentication?.accessToken);
    } on Exception catch (error) {
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
