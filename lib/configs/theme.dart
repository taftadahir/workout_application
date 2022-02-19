import 'package:flutter/material.dart';
import 'package:workout_application/configs/color.dart';

class Theme{
  static final light = ThemeData(
    backgroundColor: lightPalette.backgroundColor,
    scaffoldBackgroundColor: lightPalette.backgroundColor,
    primaryColor: lightPalette.primaryColor,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    backgroundColor: darkPalette.backgroundColor,
    scaffoldBackgroundColor: darkPalette.backgroundColor,
    primaryColor: darkPalette.primaryColor,
    brightness: Brightness.dark,
  );
}