import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/snack_bar_component.dart';

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
      SnackBarComponent.errorSnackBar(title: 'Fields validation', message: message);
    } else {
      loginFormKey.currentState!.save();

      // Here we make the request to login
    }
  }
}
