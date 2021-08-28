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
}

class AuthNotifier extends StateNotifier<AuthState> {
  final FbLoginRepository _fbLoginRepository;
  final GoogleLoginRepository _googleLoginRepository;

  AuthNotifier(this._fbLoginRepository, this._googleLoginRepository)
      : super(const AuthState.initial());

  // Future<void> checkAndUpdateState() async {
  //   // state=(await _fbLoginRepository.getToken()).fold(
  // }
  //provider needs to be fb or google
  Future<void> login(String provider) async {}
  Future<void> logOut(String provider) async {}
}
