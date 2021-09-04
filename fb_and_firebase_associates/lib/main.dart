import 'package:dartz/dartz.dart';
import 'package:fb_and_firebase_associates/login/shared/providers.dart';
import 'package:fb_and_firebase_associates/router/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  await Firebase.initializeApp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(ProviderScope(child: MyApp()));
}

final initializationProvider = Provider<Unit>((ref) {
  if (kIsWeb) {
    ref.watch(facebookAuthProvider).webInitialize(
          appId: "1329834907365798",
          cookie: true,
          xfbml: true,
          version: "v11.0",
        );
  }
  return unit;
});

class MyApp extends ConsumerWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (state) {});
    return MaterialApp.router(
      title: 'Material App',
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
