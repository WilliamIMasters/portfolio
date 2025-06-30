import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_icons/simple_icons.dart';

class TechnologiesHelper {
  static IconData getIcon(String technologie) {
    switch (technologie) {
      case "C#":
        return DevIcons.csharpPlain;
      case "JavaScript":
        return DevIcons.javascriptPlain;
      case "Dart":
        return DevIcons.dartPlain;
      case "Oracle":
        return DevIcons.oracleOriginal;
      case "MySql":
        return DevIcons.mysqlPlain;

      case ".NET Framework":
        return DevIcons.dotnetPlain;
      case "Flutter":
        return DevIcons.flutterPlain;
      case "React":
        return DevIcons.reactOriginal;
      case "Node.js":
        return DevIcons.nodejsPlain;

      case "Github":
        return DevIcons.githubOriginal;
      case "Firebase":
        return DevIcons.firebasePlain;
      case "Godot":
        return DevIcons.godotPlain;
      case "PocketBase":
        return SimpleIcons.pocketbase;
      case "MonoGame":
        return SimpleIcons.monogame;
      case "Unity":
        return SimpleIcons.unity;
      case "PostMan":
        return SimpleIcons.postman;
    }
    return Icons.question_mark_sharp;
  }

  static String? getUrl(String technologie) {
    switch (technologie) {
      case "C#":
         return "https://dotnet.microsoft.com/en-us/languages/csharp";
      case "JavaScript":
        return "https://www.javascript.com/";
      case "Dart":
        return "https://dart.dev/";
      case "Oracle":
        return "https://www.oracle.com/";
      case "MySql":
        return "https://www.mysql.com/";

      case ".NET Framework":
        return "https://dotnet.microsoft.com/en-us/download/dotnet-framework";
      case "Flutter":
        return "https://flutter.dev/";
      case "React":
        return "https://react.dev/";
      case "Node.js":
        return "https://nodejs.org/";

      case "Github":
        return "https://github.com/";
      case "Firebase":
        return "https://firebase.google.com/";
      case "Godot":
        return "https://godotengine.org/";
      case "PocketBase":
        return "https://pocketbase.io/";
      case "MonoGame":
        return "https://monogame.net/";
      case "Unity":
        return "https://unity.com/";
      case "PostMan":
        return "https://www.postman.com/";
    }
    return null;
  }
}
