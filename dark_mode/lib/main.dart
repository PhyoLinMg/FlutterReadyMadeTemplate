import 'package:dark_mode/dark_mode/presentation/home_page.dart';
import 'package:dark_mode/dark_mode/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences),
    ],
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _appThemeState = watch(appThemeStateProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context
          .read(appThemeProvider)
          .getAppThemedata(context, _appThemeState),
      home: HomePage(),
    );
  }
}
