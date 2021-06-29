## Flutter Notes

- [ Operators](#operators)
- [Solutions of Problems](#solutionofproblems)



## Operators

[First Lesson](https://resocoder.com/email_courses/rtworkrayukepso/) of Reso Coder Free Course

- [Spread](#spread)
- [Cascade](#cascade)
- [Nullability](#nullability)

##### Spread

Joining Lists without **Spread Operator**

```dart
List<int> joinCollectionsWithoutSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  collection.addAll(otherCollection);
  return collection;
}
```

Joining Lists with **Spread Operator**

```dart
List<int> joinCollectionsWithSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  return [...collection, ...otherCollection];
}
```

**Spread** can be used like this...

```dart
ListView(
      children: <Widget>[
        Text('Fake email input'),
        Text('Fake password input'),
        if (showLoginUI) ...[
          RaisedButton(
            child: Text('Login'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Forgotten Password'),
            onPressed: () {},
          ),
        ],
        if (!showLoginUI)
          RaisedButton(
            child: Text('Register'),
            onPressed: () {},
          ),
      ],
);
```

##### Cascade

Without Using Cascade...

```dart
List<int> withoutCascade() {
  final list = [5, 1, 3, 2, 4];
  list.sort();
  list.removeLast();
  return list;
}
```

With Using Cascade..

```dart
List<int> withCascade() {
  return [5, 1, 3, 2, 4]
    ..sort()
    ..removeLast();
}
```

##### Nullability

```dart
import 'package:flutter/material.dart';

void withoutCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  String result;
  if (myValue == null)
    result = fallbackValue;
  else
    result = myValue;

  final resultTernary = myValue == null ? fallbackValue : myValue;

  print(result);
  print(resultTernary);
}

void withCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  final result = myValue ?? fallbackValue;
  print(result);
}

void assignment() {
  String uninitializedValue;
  String initializedValue = 'something';

  uninitializedValue ??= 'new value';
  initializedValue ??= 'new value';

  print(uninitializedValue);
  print(initializedValue);
}

void access() {
  String uninitializedValue;
  String initializedValue = 'something';

  print(uninitializedValue?.toUpperCase());
  print(initializedValue?.toUpperCase());
}

void spread() {
  List<int> collection;
  final otherCollection = [4, 5, 6];
  final result = [...?collection, ...?otherCollection];
  print(result);
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // withoutCoalescing();
    // withCoalescing();
    // assignment();
    // access();
    spread();
    return Container();
  }
}
```



## Solutions of Problems

- Instead of using nested List Views, pre-process the lists into one list and show that list.

  https://timm.preetz.name/articles/nested-listviews-in-flutter

- Watch [Part 1](https://blog.codemagic.io/flutter-tutorial-flutter-layout-system/) and [Part 2](https://blog.codemagic.io/flutter-tutorial-part-2) for Flutter Tips and Tricks

- [android match_parent and wrap_content](https://stackoverflow.com/questions/42257668/the-equivalent-of-wrap-content-and-match-parent-in-flutter) in flutter

- [Multiple Theme](https://www.filledstacks.com/post/multiple-themes-in-flutter-dark-and-light-theme-flutter-stacked/) in Flutter(Integrated in this repository)

- [Dark and Light Theme](https://github.com/FilledStacks/stacked/tree/master/packages/stacked_themes/example/lib/ui/dark_light) in Flutter(Not Integrated)

- [Removing Scroll Glow](https://stackoverflow.com/a/51119796/5869913)

- Flutter Silver List [Tuto 1](https://www.woolha.com/tutorials/flutter-customscrollview-with-slivers-examples) and [Tuto 2](https://androidmonks.com/sliverappbar-flutter/)

- [Get Widget](https://www.getwidget.dev/) A ready made widgets for Flutter

- [Nice Flutter Soccer App](https://doctorcodetutorial.blogspot.com/2020/09/make-football-scoreboard-app-with.html)

- [Flutter Multi-Language](https://medium.com/flutter-community/multi-language-support-in-flutter-a12de708f833)

  

## Resources

