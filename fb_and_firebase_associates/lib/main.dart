import 'package:fb_and_firebase_associates/router/router.gr.dart';
import 'package:fb_and_firebase_associates/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
