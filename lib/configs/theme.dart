import 'package:flutter/material.dart';
import 'package:workout_application/configs/color.dart';

class Theme{
  static final light = ThemeData(
    backgroundColor: lightPalette.backgroundColor,
    scaffoldBackgroundColor: lightPalette.backgroundColor,
    primaryColor: lightPalette.primaryColor,
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPalette.backgroundColor,
      elevation: 0.0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: lightPalette.primaryColor,
        size: 32.0,
      ),
      unselectedIconTheme:  IconThemeData(
        color: lightPalette.greyColor,
        size: 24.0,
      ),
    ),
  );

  static final dark = ThemeData(
    backgroundColor: darkPalette.backgroundColor,
    scaffoldBackgroundColor: darkPalette.backgroundColor,
    primaryColor: darkPalette.primaryColor,
    brightness: Brightness.dark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPalette.backgroundColor,
      elevation: 0.0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: darkPalette.primaryColor,
        size: 32.0,
      ),
      unselectedIconTheme:  IconThemeData(
        color: darkPalette.greyColor,
        size: 24.0,
      ),
    ),
  );
}