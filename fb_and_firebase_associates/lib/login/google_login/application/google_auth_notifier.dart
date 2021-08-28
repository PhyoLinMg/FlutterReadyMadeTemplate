import 'package:fb_and_firebase_associates/login/fb_login/infrastructure/fb_login_repository.dart';
import 'package:fb_and_firebase_associates/login/google_login/infrastructure/google_login_repository.dart';
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
}

class GoogleAuthNotifier extends StateNotifier<GoogleAuthState> {
  final GoogleLoginRepository _googleLoginRepository;

  GoogleAuthNotifier(this._googleLoginRepository)
      : super(const GoogleAuthState.initial());

  // Future<void> checkAndUpdateState() async {
  //   // state=(await _fbLoginRepository.getToken()).fold(
  // }
  //provider needs to be fb or google
  Future<void> login(String provider) async {}
  Future<void> logOut(String provider) async {}
}
