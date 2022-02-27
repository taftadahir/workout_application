import 'package:flutter/material.dart';

class Behavior {
  static ScrollPhysics? get physics => const BouncingScrollPhysics();

  static BottomNavigationBarType? get bottomNavigationBarType =>
      BottomNavigationBarType.fixed;

  static Duration get animationDuration => const Duration(milliseconds: 250);
  static Duration get snackDuration => const Duration(seconds: 5);
}
