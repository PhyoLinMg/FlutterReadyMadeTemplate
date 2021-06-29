import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedUtility {
  SharedUtility({
    @required this.sharedPreferences,
  });

  final SharedPreferences? sharedPreferences;

  bool isDarkModeEnabled() {
    return sharedPreferences!.getBool('isDarkModeEnabled') ?? false;
  }

  Future<bool> setDarkModeEnabled(bool value) async {
    return await sharedPreferences!.setBool('isDarkModeEnabled', value);
  }
}
