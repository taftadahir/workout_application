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

    switch (type) {
      case GlobalConstant.authTitle:
        _fontSize = 24.0;
        _textAlign = TextAlign.center;
        break;
      case GlobalConstant.sectionTitle:
        _fontSize = 24.0;
        _textAlign = TextAlign.start;
        break;
    }

    return Text(
      text,
      textAlign: _textAlign,
      style: TextStyle(
        fontSize: _fontSize,
        fontWeight: FontWeight.bold,
        color: context.textTheme.labelMedium?.color,
      ),
    );
  }
}
