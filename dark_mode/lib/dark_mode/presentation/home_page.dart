import 'package:dark_mode/dark_mode/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appThemeState = context.read(appThemeStateProvider);
    final _appThemeStateProvider = context.read(appThemeStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Ninja',
        ),
      ),
      body: Container(
        child: SwitchListTile(
          title: Text(
            "Dark Mode",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          value: _appThemeState,
          activeColor: Colors.cyan,
          onChanged: (value) => _appThemeStateProvider.toggleAppTheme(context),
        ),
      ),
    );
  }
}
