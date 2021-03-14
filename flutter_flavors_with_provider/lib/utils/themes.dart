import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeDev = ThemeData(
    primaryColor: Colors.purple,
    accentColor: Colors.purpleAccent,
  );
  static ThemeData themeStaging = ThemeData(
    primaryColor: Colors.amber,
    accentColor: Colors.amberAccent,
  );
  static ThemeData themeProduction = ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.greenAccent,
  );
}
