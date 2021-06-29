import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_theme_flutter/theme_feature/application/theme_provider.dart';
import 'package:multi_theme_flutter/theme_feature/shared/provider.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MultipleThemeCard extends ConsumerWidget {
  const MultipleThemeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeService service = ref.watch(themeProvider);
    final ThemeProvider provider = ThemeProvider(service: service);
    return Card(
        color: Theme.of(context).backgroundColor,
        child: Wrap(
          children: provider.themes
              .map(
                (themeData) => GestureDetector(
                  onTap: () {
                    provider.setTheme(themeData.index!);
                    print(themeData.index);
                  },
                  child: Chip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    avatar: CircleAvatar(
                      backgroundColor: themeData.color,
                    ),
                    label: Text(themeData.color!.value.toString()),
                  ),
                ),
              )
              .toList(),
        ));
  }
}
