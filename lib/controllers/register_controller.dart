import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/snack_bar_component.dart';

class RegisterController extends GetxController {
  int _screenIndex = 0;
  late TextEditingController firstnameController,
      lastnameController,
      emailController,
      passwordController;
  late String firstname, lastname, email, password;
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstnameController = TextEditingController();
    lastnameController = TextEditingController();
    email = '';
    firstname = '';
    lastname = '';
    password = '';
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    super.onClose();
  }

  int get screenIndex => _screenIndex;

  set screenIndex(int index) {
    _screenIndex = index;
    update();
  }

  void register() {
    String message = '';
    bool hasError = false;

    if (!emailController.text.isEmail) {
      message += GlobalConstant.emailValidation;
      hasError = true;
    }

    if (passwordController.text.length < 8) {
      message += message == ''
          ? GlobalConstant.passwordValidation
          : '\n${GlobalConstant.passwordValidation}';
      hasError = true;
    }

    if (firstnameController.text.length < 2) {
      message += message == ''
          ? GlobalConstant.firstnameValidation
          : '\n${GlobalConstant.firstnameValidation}';
      hasError = true;
    }

    if (lastnameController.text.length < 2) {
      message += message == ''
          ? GlobalConstant.lastnameValidation
          : '\n${GlobalConstant.lastnameValidation}';
      hasError = true;
    }

    if (hasError) {
      SnackBarComponent.errorSnackBar(
        title: 'Fields validation',
        message: message,
      );
    } else {
      registerFormKey.currentState!.save();

      // Here we make the request to login
    }
  }
}
