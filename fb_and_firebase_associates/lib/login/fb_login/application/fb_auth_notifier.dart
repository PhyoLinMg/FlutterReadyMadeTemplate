import 'package:fb_and_firebase_associates/login/fb_login/infrastructure/fb_login_repository.dart';
import 'package:fb_and_firebase_associates/login/google_login/infrastructure/google_login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fb_auth_notifier.freezed.dart';

@freezed
class FbAuthState with _$FbAuthState {
  const FbAuthState._();
  const factory FbAuthState.initial() = _Initial;
  const factory FbAuthState.unauthenticated() = _Unauthenticated;
  const factory FbAuthState.authenticated(
    String token,
  ) = _Authenticated;
}

class FbAuthNotifier extends StateNotifier<FbAuthState> {
  final FbLoginRepository _fbLoginRepository;
  final GoogleLoginRepository _googleLoginRepository;

  FbAuthNotifier(this._fbLoginRepository, this._googleLoginRepository)
      : super(const FbAuthState.initial());

  // Future<void> checkAndUpdateState() async {
  //   // state=(await _fbLoginRepository.getToken()).fold(
  // }
  //provider needs to be fb or google
  Future<void> login(String provider) async {}
  Future<void> logOut(String provider) async {}
}
