import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configs/behavior.dart';

class DotComponent extends StatelessWidget {
  final int currentIndex;
  final int index;
  final Color? unselectedColor;
  final Color? selectedColor;
  final double selectedWidth;
  final double dotHeight;

  const DotComponent({
    Key? key,
    required this.currentIndex,
    required this.index,
    this.selectedColor,
    this.unselectedColor,
    this.selectedWidth = 32.0,
    this.dotHeight = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _unselectedColor = unselectedColor ?? Get.theme.disabledColor;
    Color _selectedColor = selectedColor ?? Get.theme.primaryColor;
    return AnimatedContainer(
      duration: Behavior.animationDuration,
      height: dotHeight,
      width: currentIndex == index ? selectedWidth : dotHeight,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: currentIndex == index ? _selectedColor : _unselectedColor,
      ),
    );
  }
}
