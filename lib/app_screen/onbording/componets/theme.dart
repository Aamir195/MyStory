import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,

    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      textTheme: TextTheme(headline5: TextStyle(color: Vx.black)),
    ),

    //  final darktheme = theme
  );
  final darktheme = ThemeData.dark().copyWith(
    primaryColor: Vx.blue100,
    brightness: Brightness.dark,
    textTheme: TextTheme(headline5: TextStyle(color: Vx.white)),
  );
}
