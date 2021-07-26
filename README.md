# Ready Made Flutter Template

In This Repository, I will make neat and tidy features to our code.

## Getting Started

Used Package

```yaml
flutter_riverpod: ^0.14.0+3
shared_preferences: ^2.0.6
stacked_themes: ^0.3.5
```

#### Some Tips and Tricks

It is only for Visual Studio Code

> **Ctrl+Shift+P or F1=>Configure User Snippets->choose Dart and paste the following**

```json
{
  "Part statement": {
    "prefix": "pts",
    "body": [
      "part '${TM_FILENAME_BASE}.g.dart';",
    ],
    "description": "Creates a filled-in part statement"
  },
  "Part 'Freezed' statement": {
    "prefix": "ptf",
    "body": [
      "part '${TM_FILENAME_BASE}.freezed.dart';",
    ],
    "description": "Creates a filled-in freezed part statement"
  },
  "Freezed Data Class": {
    "prefix": "fdataclass",
    "body": [
      "@freezed",
      "class ${1:DataClass} with _$${1:DataClass} {",
      "  const ${1:DataClass}._();",
      "  const factory ${1:DataClass}(${2}) = _${1:DataClass};",
      "}"
    ],
    "description": "Freezed Data Class"
  },
  "Freezed Union": {
    "prefix": "funion",
    "body": [
      "@freezed",
      "class ${1:Union} with _$${1:Union} {",
      "  const ${1:Union}._();",
      "  const factory ${1:Union}.${2}(${4}) = ${3};",
      "}"
    ],
    "description": "Freezed Union"
  },
  "Freezed Union Case": {
    "prefix": "funioncase",
    "body": [
      "const factory ${1:Union}.${2}(${4}) = ${3};"
    ],
    "description": "Freezed Union Case"
  },
  "From JSON": {
    "prefix": "fromJson",
    "body": [
      "factory ${1}.fromJson(Map<String, dynamic> json) => _$${1}FromJson(json);"
    ],
    "description": "From JSON"
  },
  "Class With Filename": {
    "prefix": "classfile",
    "body": [
      "class ${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g} {${1}}",
    ],
    "description": "Creates class which shares the name of the file"
  },
} 
```



### Flutter Notes

**[Here](https://github.com/PhyoLinMg/FlutterReadyMadeTemplate/blob/main/Flutter%20Notes.md)**
=======
