# Multiple Theme 

Used Packages:

```yaml
flutter_riverpod: ^1.0.0-dev.2
flutter_secure_storage: ^4.2.0
stacked_themes: ^0.3.5
```

Copy theme_provider folder to your project.

And change infrastructure/themes.dart as your requirements.

And also change presentation/ to your requirements.

In your main.dart

```dart
return ThemeBuilder(
      themes: getThemes(),
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        title: 'Flutter Demo Page',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
```

