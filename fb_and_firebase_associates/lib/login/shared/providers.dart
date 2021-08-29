import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:fb_and_firebase_associates/login/fb_login/infrastructure/fb_login_repository.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

final googleSignInProvider = Provider(
  (ref) => GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  ),
);

final facebookAuthProvider = Provider((ref) => FacebookAuth.instance);

final googleLogInRepositoryProvider = Provider<LoginRepository>(
  (ref) => FbLoginRepository(
    ref.watch(facebookAuthProvider),
  ),
);

final facebookLoginRepositoryProvider = Provider<LoginRepository>(
  (ref) => FbLoginRepository(
    ref.watch(facebookAuthProvider),
  ),
);
