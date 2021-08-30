import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_auth_notifier.freezed.dart';

@freezed
class GoogleAuthState with _$GoogleAuthState {
  const GoogleAuthState._();
  const factory GoogleAuthState.initial() = _Initial;
  const factory GoogleAuthState.unauthenticated() = _Unauthenticated;
  const factory GoogleAuthState.authenticated(
    String token,
  ) = _Authenticated;
  const factory GoogleAuthState.failure(AuthFailure failure) = _Failure;
}

class GoogleAuthNotifier extends StateNotifier<GoogleAuthState> {
  final LoginRepository _googleLoginRepository;

  GoogleAuthNotifier(this._googleLoginRepository)
      : super(const GoogleAuthState.initial());

  // Future<void> checkAndUpdateState() async {
  //   // state=(await _fbLoginRepository.getToken()).fold(
  // }
  //provider needs to be fb or google
  Future<void> login() async {
    final failureOrSignedOut = await _googleLoginRepository.login();
    state = failureOrSignedOut.fold(
      (l) => GoogleAuthState.failure(l),
      (r) => GoogleAuthState.authenticated(r),
    );
  }

  Future<void> logOut() async {
    final failureOrSignedOut = await _googleLoginRepository.logOut();
    state = failureOrSignedOut.fold(
      (l) => GoogleAuthState.failure(l),
      (r) => const GoogleAuthState.unauthenticated(),
    );
  }
}
