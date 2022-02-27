import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/constants/global_constant.dart';

class LoginController extends GetxController {
  late TextEditingController emailController, passwordController;
  late String email, password;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    email = '';
    password = '';
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void login() {
    String message = '';
    bool hasError = false;
    if (!emailController.text.isEmail) {
      message += GlobalConstant.emailValidation;
      hasError = true;
    }

    if (passwordController.text.length < 8) {
      if (message == '') {
        message += GlobalConstant.passwordValidation;
      } else {
        message += '\n${GlobalConstant.passwordValidation}';
      }
      hasError = true;
    }

    if (hasError) {
      Get.showSnackbar(
        GetSnackBar(
          title: 'Fields validation',
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
    } else {
      loginFormKey.currentState!.save();

      // Here we make the request to login
    }
  }
}
