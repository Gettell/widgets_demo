import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
    fontFamily: 'Georgia',
    splashColor: Colors.yellow,

    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
      primarySwatch: Colors.orange,
    ).copyWith(
      secondary: Colors.green,
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, color: Colors.brown),
      subtitle1: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic, color: Colors.indigo),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.red),
    )
);