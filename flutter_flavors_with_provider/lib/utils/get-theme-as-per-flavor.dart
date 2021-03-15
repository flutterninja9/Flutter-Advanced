import 'package:flutter/material.dart';
import '../flavors.dart';
import 'themes.dart';

ThemeData getThemeAsPerEnv(Flavor flavor) {
  switch (flavor) {
    case Flavor.dev:
      return AppTheme.themeDev;
    case Flavor.staging:
      return AppTheme.themeStaging;
    case Flavor.prod:
      return AppTheme.themeProduction;
    default:
      return ThemeData();
  }
}
