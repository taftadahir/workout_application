import 'package:flutter/material.dart';
import 'package:workout_application/configs/color.dart';
import 'package:workout_application/configs/style.dart';

import 'behavior.dart';

class Theme {
  // Text Button Theme
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
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16.0,
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(72, 40)),
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
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16.0,
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(72, 40)),
        ),
      );

  // App Bar Theme
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

  // Bottom Navigation Bar Theme Data
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

  // List Tile Theme Data
  static ListTileThemeData get _listTileThemeDataLight => ListTileThemeData(
        textColor: lightPalette.textColor,
        iconColor: lightPalette.textColor,
        tileColor: lightPalette.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 0,
        ),
        minLeadingWidth: 0,
      );

  static ListTileThemeData get _listTileThemeDataDark => ListTileThemeData(
        textColor: darkPalette.textColor,
        iconColor: darkPalette.textColor,
        tileColor: darkPalette.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 0,
        ),
        minLeadingWidth: 0,
      );

  // Drawer Theme Data
  static DrawerThemeData get _drawerThemeDataLight => DrawerThemeData(
        backgroundColor: lightPalette.backgroundColor,
      );

  static DrawerThemeData get _drawerThemeDataDark => DrawerThemeData(
        backgroundColor: darkPalette.backgroundColor,
      );

  // Elevated Button Theme
  static ElevatedButtonThemeData get _elevatedButtonThemeDataLight =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size.fromWidth(double.infinity),
          ),
          animationDuration: Behavior.animationDuration,
          backgroundColor: MaterialStateProperty.all(lightPalette.primaryColor),
          elevation: MaterialStateProperty.all(0.0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24),
          ),
        ),
      );

  static ElevatedButtonThemeData get _elevatedButtonThemeDataDark =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size.fromWidth(double.infinity),
          ),
          animationDuration: Behavior.animationDuration,
          backgroundColor: MaterialStateProperty.all(darkPalette.primaryColor),
          elevation: MaterialStateProperty.all(0.0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24),
          ),
        ),
      );

  // Outline Input Border
  static OutlineInputBorder get _outlineInputBorderLight => OutlineInputBorder(
        borderSide: BorderSide(
          color: lightPalette.backgroundLightColor,
          width: 0.0,
        ),
      );

  static OutlineInputBorder get _outlineInputBorderDark => OutlineInputBorder(
        borderSide: BorderSide(
          color: darkPalette.backgroundLightColor,
          width: 0.0,
        ),
      );

  // Input Decoration Theme
  static InputDecorationTheme get _inputDecorationThemeLight =>
      InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: _outlineInputBorderLight,
        enabledBorder: _outlineInputBorderLight,
        errorBorder: _outlineInputBorderLight,
        focusedBorder: _outlineInputBorderLight,
        focusedErrorBorder: _outlineInputBorderLight,
        disabledBorder: _outlineInputBorderLight,
        floatingLabelStyle: Style.fieldLabelStyleLight,
        errorStyle: Style.fieldErrorStyle,
        hintStyle: Style.fieldHintStyleLight,
        labelStyle: Style.fieldLabelStyleLight,
      );

  static InputDecorationTheme get _inputDecorationThemeDark =>
      InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: _outlineInputBorderDark,
        enabledBorder: _outlineInputBorderDark,
        errorBorder: _outlineInputBorderDark,
        focusedBorder: _outlineInputBorderDark,
        focusedErrorBorder: _outlineInputBorderDark,
        disabledBorder: _outlineInputBorderDark,
        floatingLabelStyle: Style.fieldLabelStyleDark,
        errorStyle: Style.fieldErrorStyle,
        hintStyle: Style.fieldHintStyleDark,
        labelStyle: Style.fieldLabelStyleDark,
      );

  // Snack Bar Theme
  static SnackBarThemeData get _snackBarThemeDataDark => SnackBarThemeData(
        backgroundColor: darkPalette.errorColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      );

  static SnackBarThemeData get _snackBarThemeDataLight => SnackBarThemeData(
        backgroundColor: lightPalette.errorColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      );

  // Text theme
  static TextTheme get _textThemeLight => TextTheme(
        headlineSmall: TextStyle(
          color: lightPalette.greyColor,
          fontSize: 12.0,
        ),
        bodyMedium: TextStyle(
          color: lightPalette.textLightColor,
          fontSize: 16,
          height: 1.8,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: lightPalette.textColor,
        ),
      );

  static TextTheme get _textThemeDark => TextTheme(
        headlineSmall: TextStyle(
          color: darkPalette.greyColor,
          fontSize: 12.0,
        ),
        bodyMedium: TextStyle(
          color: darkPalette.textLightColor,
          fontSize: 16,
          height: 1.8,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: darkPalette.textColor,
        ),
      );

  // Theme Data
  static final light = ThemeData(
    backgroundColor: lightPalette.backgroundColor,
    scaffoldBackgroundColor: lightPalette.backgroundColor,
    primaryColor: lightPalette.primaryColor,
    brightness: Brightness.light,
    shadowColor: lightPalette.backgroundLightColor,
    dividerColor: lightPalette.greyColor,
    disabledColor: lightPalette.greyColor,
    cardColor: lightPalette.backgroundLightColor,
    bottomNavigationBarTheme: _bottomNavigationBarThemeDataLight,
    appBarTheme: _appBarThemeLight,
    textButtonTheme: _textButtonThemeDataLight,
    listTileTheme: _listTileThemeDataLight,
    drawerTheme: _drawerThemeDataLight,
    elevatedButtonTheme: _elevatedButtonThemeDataLight,
    inputDecorationTheme: _inputDecorationThemeLight,
    snackBarTheme: _snackBarThemeDataLight,
    textTheme: _textThemeLight,
  );

  static final dark = ThemeData(
    backgroundColor: darkPalette.backgroundColor,
    scaffoldBackgroundColor: darkPalette.backgroundColor,
    primaryColor: darkPalette.primaryColor,
    brightness: Brightness.dark,
    shadowColor: darkPalette.backgroundLightColor,
    dividerColor: darkPalette.greyColor,
    disabledColor: darkPalette.greyColor,
    cardColor: darkPalette.backgroundLightColor,
    bottomNavigationBarTheme: _bottomNavigationBarThemeDataDark,
    appBarTheme: _appBarThemeDark,
    textButtonTheme: _textButtonThemeDataDark,
    listTileTheme: _listTileThemeDataDark,
    drawerTheme: _drawerThemeDataDark,
    elevatedButtonTheme: _elevatedButtonThemeDataDark,
    inputDecorationTheme: _inputDecorationThemeDark,
    snackBarTheme: _snackBarThemeDataDark,
    textTheme: _textThemeDark,
  );
}
