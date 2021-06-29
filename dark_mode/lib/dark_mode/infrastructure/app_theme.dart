import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData _lightThemeData = ThemeData(
    primaryColor: Colors.blueGrey[600],
    accentColor: Colors.blueGrey[100],
    scaffoldBackgroundColor: Colors.blueGrey[100],
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          color: Colors.white,
        ),
        primary: Colors.red,
      ),
    ),
  );

  static ThemeData _darkThemeData = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.black45,
    scaffoldBackgroundColor: Colors.grey,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          color: Colors.white,
        ),
        primary: Colors.blue,
      ),
    ),
  );

  ThemeData getAppThemedata(BuildContext context, bool isDarkModeEnabled) {
    return isDarkModeEnabled ? _darkThemeData : _lightThemeData;
  }
}
