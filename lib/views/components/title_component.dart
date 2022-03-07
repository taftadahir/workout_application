import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';

class TitleComponent extends StatelessWidget {
  final String text;
  final String type;

  const TitleComponent({
    Key? key,
    required this.text,
    this.type = GlobalConstant.authTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _fontSize = 16.0;
    TextAlign _textAlign = TextAlign.start;
    FontWeight _fontWeight = FontWeight.bold;

    switch (type) {
      case GlobalConstant.authTitle:
        _fontSize = 24.0;
        _textAlign = TextAlign.center;
        break;
      case GlobalConstant.sectionTitle:
        _fontSize = 24.0;
        _textAlign = TextAlign.start;
        break;
      case GlobalConstant.workoutDetailTitle:
        _fontSize = 16.0;
        _textAlign = TextAlign.start;
        _fontWeight = FontWeight.w600;
        break;
      case GlobalConstant.calendarMonth:
        _fontSize = 20.0;
        _textAlign = TextAlign.start;
        _fontWeight = FontWeight.bold;
        break;
      case GlobalConstant.workoutTitle:
        _fontSize = 20.0;
        _textAlign = TextAlign.start;
        _fontWeight = FontWeight.bold;
        break;
    }

    return Text(
      text,
      textAlign: _textAlign,
      style: TextStyle(
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        color: context.textTheme.labelMedium?.color,
      ),
    );
  }
}
