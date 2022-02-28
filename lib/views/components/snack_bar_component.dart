import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';

class SnackBarComponent{
  static errorSnackBar({required String title, required String message}){
    Get.showSnackbar(
      GetSnackBar(
        title: title,
        message: message,
        snackPosition: SnackPosition.TOP,
        dismissDirection: DismissDirection.vertical,
        backgroundColor: Get.theme.snackBarTheme.backgroundColor ??
            const Color(0xFF303030),
        duration: Behavior.snackDuration,
        snackStyle: SnackStyle.GROUNDED,
        animationDuration: Behavior.animationDuration,
      ),
    );
  }
}