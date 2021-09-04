import 'package:fb_and_firebase_associates/login/core/application/auth_notifier.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:fb_and_firebase_associates/login/fb_login/application/fb_auth_notifier.dart';
import 'package:fb_and_firebase_associates/login/fb_login/infrastructure/fb_login_repository.dart';
import 'package:fb_and_firebase_associates/login/google_login/application/google_auth_notifier.dart';
import 'package:fb_and_firebase_associates/login/google_login/infrastructure/google_login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final googleSignInProvider = Provider(
  (ref) => GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  ),
);

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final facebookAuthProvider = Provider((ref) => FacebookAuth.instance);

final googleLogInRepositoryProvider = Provider<LoginRepository>(
  (ref) => GoogleLoginRepository(
    ref.watch(firebaseAuthProvider),
    ref.watch(googleSignInProvider),
  ),
);

final facebookLoginRepositoryProvider = Provider<LoginRepository>(
  (ref) => FbLoginRepository(
    ref.watch(facebookAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    fbLoginRepository: ref.watch(facebookLoginRepositoryProvider),
    googleLoginRepository: ref.watch(googleLogInRepositoryProvider),
  ),
);

final facebookAuthNotifierProvider =
    StateNotifierProvider<FbAuthNotifier, FbAuthState>(
  (ref) => FbAuthNotifier(
    fbLoginRepository: ref.watch(facebookLoginRepositoryProvider),
  ),
);

final googleAuthNotifierProvider =
    StateNotifierProvider<GoogleAuthNotifier, GoogleAuthState>(
  (ref) => GoogleAuthNotifier(
    googleLoginRepository: ref.watch(googleLogInRepositoryProvider),
  ),
);
