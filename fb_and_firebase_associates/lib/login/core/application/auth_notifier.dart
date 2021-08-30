import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:fb_and_firebase_associates/login/fb_login/infrastructure/fb_login_repository.dart';
import 'package:fb_and_firebase_associates/login/google_login/infrastructure/google_login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(
    String token,
  ) = _Authenticated;

  const factory AuthState.authenticationFailure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final LoginRepository _fbLoginRepository;
  final LoginRepository _googleLoginRepository;

  AuthNotifier(this._fbLoginRepository, this._googleLoginRepository)
      : super(const AuthState.initial());

  // Future<void> checkAndUpdateState() async {
  //   // state=(await _fbLoginRepository.getToken()).fold(
  // }
  //provider needs to be fb or google
  Future<void> login(LoginType provider) async {
    if (provider == LoginType.facebook) {
      final fbFailureOrToken = await _fbLoginRepository.login();
      state = fbFailureOrToken.fold((l) => AuthState.authenticationFailure(l),
          (r) => AuthState.authenticated(r));
    } else if (provider == LoginType.google) {
      final googleFailureOrToken = await _googleLoginRepository.login();
      state = googleFailureOrToken.fold(
        (l) => AuthState.authenticationFailure(l),
        (r) => AuthState.authenticated(r),
      );
    }
  }

  Future<void> logOut(LoginType provider) async {
    switch (provider) {
      case LoginType.facebook:
        final fbFailureOrSignedOut = await _fbLoginRepository.logOut();
        state = fbFailureOrSignedOut.fold(
          (l) => AuthState.authenticationFailure(l),
          (r) => const AuthState.unauthenticated(),
        );
        break;
      case LoginType.google:
        final googleFailureOrSignedOut = await _googleLoginRepository.logOut();
        state = googleFailureOrSignedOut.fold(
          (l) => AuthState.authenticationFailure(l),
          (r) => const AuthState.unauthenticated(),
        );
        break;
      default:
        break;
    }
  }
}

enum LoginType { facebook, google }