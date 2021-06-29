import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked_themes/stacked_themes.dart';

final themeProvider = Provider((_) => ThemeService.getInstance());

final sharedPreferenceProvider = Provider((_) => FlutterSecureStorage());
