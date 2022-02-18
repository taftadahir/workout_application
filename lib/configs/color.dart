import 'package:flutter/material.dart';

class ColorPalette {
  final Color backgroundColor;
  final Color backgroundLightColor;
  final Color textColor;
  final Color textLightColor;
  final Color primaryColor;
  final Color successColor;
  final Color errorColor;
  final Color greyColor;

  ColorPalette({
    required this.backgroundColor,
    required this.backgroundLightColor,
    required this.textColor,
    required this.textLightColor,
    required this.primaryColor,
    required this.successColor,
    required this.errorColor,
    required this.greyColor,
  }) : super();
}

ColorPalette get darkPalette => ColorPalette(
      backgroundColor: const Color(0xFF30343F),
      backgroundLightColor: const Color(0xFF343947),
      textColor: const Color(0xFFF3F4F8),
      textLightColor: const Color(0xFF8d99ae),
      primaryColor: const Color(0xFF6F7BF7),
      successColor: const Color(0xFF7ef29d),
      errorColor: const Color(0xFFf1515e),
      greyColor: const Color(0xFF8d99ae),
    );

ColorPalette get lightPalette => ColorPalette(
      backgroundColor: const Color(0xFFFFFFFF),
      backgroundLightColor: const Color(0xFFF3F4F8),
      textColor: const Color(0xFF302F4D),
      textLightColor: const Color(0xFF808593),
      primaryColor: const Color(0xFF6F7BF7),
      successColor: const Color(0xFF19B07A),
      errorColor: const Color(0xFFFF546C),
      greyColor: const Color(0xFF596376),
    );
