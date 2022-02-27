
import 'package:flutter/material.dart';
import 'package:workout_application/configs/color.dart';

class Style {
  static TextStyle _getTextStyle({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 16.0,
    double? height,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        color: color,
      );

  // Field Label Style
  static TextStyle get fieldLabelStyleLight => _getTextStyle(
    fontWeight: FontWeight.bold,
    color: lightPalette.textLightColor,
  );

  static TextStyle get fieldLabelStyleDark => _getTextStyle(
    fontWeight: FontWeight.bold,
    color: darkPalette.textLightColor,
  );

  // Field Error Style
  static TextStyle get fieldErrorStyle => _getTextStyle(
    height: 0,
    fontSize: 0,
  );

  // Field int Style
  static TextStyle get fieldHintStyleLight => _getTextStyle(
    color: lightPalette.greyColor,
  );

  static TextStyle get fieldHintStyleDark => _getTextStyle(
    color: darkPalette.greyColor,
  );
}
