import 'package:flutter/material.dart';

import 'package:multi_theme_flutter/theme_feature/presentation/multiple_theme_card.dart';

class ThemeDemoPage extends StatefulWidget {
  const ThemeDemoPage({Key? key}) : super(key: key);

  @override
  _ThemeDemoPageState createState() => _ThemeDemoPageState();
}

class _ThemeDemoPageState extends State<ThemeDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          MultipleThemeCard(),
        ],
      ),
    );
  }
}
