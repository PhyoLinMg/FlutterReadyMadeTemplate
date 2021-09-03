import 'package:fb_and_firebase_associates/login/core/infrastructure/auth_failure.dart';
import 'package:fb_and_firebase_associates/login/core/infrastructure/login_repository.dart';
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
  const factory FbAuthState.failure(AuthFailure failure) = _Failure;
}

class FbAuthNotifier extends StateNotifier<FbAuthState> {
  final LoginRepository fbLoginRepository;

  FbAuthNotifier({required this.fbLoginRepository})
      : super(const FbAuthState.initial());

  //provider needs to be fb or google
  Future<void> login() async {
    final failureOrToken = await fbLoginRepository.login();
    state = failureOrToken.fold(
      (l) => FbAuthState.failure(l),
      (r) => FbAuthState.authenticated(r),
    );
  }

  Future<void> logOut(String provider) async {
    final failureOrSignedOut = await fbLoginRepository.logOut();
    state = failureOrSignedOut.fold(
      (l) => FbAuthState.failure(l),
      (r) => const FbAuthState.unauthenticated(),
    );
  }
}
