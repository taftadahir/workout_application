import 'package:flutter/material.dart';
import 'package:workout_application/configs/color.dart';

class Theme {
  // Text button theme
  static TextButtonThemeData get _textButtonThemeDataLight =>
      TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            lightPalette.backgroundLightColor,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(
            lightPalette.textColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      );

  static TextButtonThemeData get _textButtonThemeDataDark =>
      TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            darkPalette.backgroundLightColor,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(
            darkPalette.textColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      );

  // App bar theme
  static AppBarTheme get _appBarThemeLight => AppBarTheme(
        backgroundColor: lightPalette.backgroundColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: lightPalette.textColor,
        ),
        titleTextStyle: TextStyle(
          color: lightPalette.textColor,
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
        ),
      );

  static AppBarTheme get _appBarThemeDark => AppBarTheme(
        backgroundColor: darkPalette.backgroundColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: darkPalette.textColor,
        ),
        titleTextStyle: TextStyle(
          color: darkPalette.textColor,
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
        ),
      );

  // Bottom navigation bar
  static BottomNavigationBarThemeData get _bottomNavigationBarThemeDataLight =>
      BottomNavigationBarThemeData(
        backgroundColor: lightPalette.backgroundColor,
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: lightPalette.primaryColor,
          size: 32.0,
        ),
        unselectedIconTheme: IconThemeData(
          color: lightPalette.greyColor,
          size: 24.0,
        ),
      );

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeDataDark =>
      BottomNavigationBarThemeData(
        backgroundColor: darkPalette.backgroundColor,
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: darkPalette.primaryColor,
          size: 32.0,
        ),
        unselectedIconTheme: IconThemeData(
          color: darkPalette.greyColor,
          size: 24.0,
        ),
      );

  // Theme data
  static final light = ThemeData(
    backgroundColor: lightPalette.backgroundColor,
    scaffoldBackgroundColor: lightPalette.backgroundColor,
    primaryColor: lightPalette.primaryColor,
    brightness: Brightness.light,
    bottomNavigationBarTheme: _bottomNavigationBarThemeDataLight,
    appBarTheme: _appBarThemeLight,
    textButtonTheme: _textButtonThemeDataLight,
  );

  static final dark = ThemeData(
    backgroundColor: darkPalette.backgroundColor,
    scaffoldBackgroundColor: darkPalette.backgroundColor,
    primaryColor: darkPalette.primaryColor,
    brightness: Brightness.dark,
    bottomNavigationBarTheme: _bottomNavigationBarThemeDataDark,
    appBarTheme: _appBarThemeDark,
    textButtonTheme: _textButtonThemeDataDark,
  );
}
