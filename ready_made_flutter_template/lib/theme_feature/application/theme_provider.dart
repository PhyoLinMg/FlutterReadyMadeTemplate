//acts like a viewmodel in this case. We don't want to mix the application logic to ui.
//That is why we are separating.
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:multi_theme_flutter/theme_feature/infrastructure/themes.dart';
import 'package:stacked_themes/stacked_themes.dart';

class ThemeProvider {
  static const key = "theme_key";

  static const isDarkKey = "is_dark_key";
  final ThemeService? service;

  const ThemeProvider({@required this.service});
  List<ModelTheme> get themes => getThemes()
      .mapIndexed(
          (int index, e) => ModelTheme(index: index, color: e.accentColor))
      .toList();

  Future<void> setTheme(int themeIndex) async {
    service!.selectThemeAtIndex(themeIndex);
  }
}

extension FicListExtension<T> on List<T> {
  /// Maps each element of the list.
  /// The [map] function gets both the original [item] and its [index].
  Iterable<E> mapIndexed<E>(E Function(int index, T item) map) sync* {
    for (var index = 0; index < length; index++) {
      yield map(index, this[index]);
    }
  }
}
