import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/services/storage_service.dart';
import 'package:workout_application/views/components/snack_bar_component.dart';

class ProfileController extends GetxController {
  late String firstname;
  late String lastname;
  late String email;
  late String avatar;
  late TextEditingController emailController,
      firstnameController,
      lastnameController,
      avatarController;
  final GlobalKey<FormState> editProfileFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();

    firstname = StorageService.firstname ?? '';
    lastname = StorageService.lastname ?? '';
    email = StorageService.email ?? '';
    avatar = StorageService.avatar ??
        'https://image.shutterstock.com/image-photo/cheerful-positive-guy-beard-rejoicing-260nw-1478799818.jpg';

    emailController = TextEditingController(text: email);
    firstnameController = TextEditingController(text: firstname);
    lastnameController = TextEditingController(text: lastname);
    avatarController = TextEditingController(text: avatar);
  }

  void refreshData() {
    firstname = StorageService.firstname ?? '';
    lastname = StorageService.lastname ?? '';
    email = StorageService.email ?? '';
    update();
  }

  void save() {
    String message = '';
    bool hasError = false;
    if (!emailController.text.isEmail) {
      message += GlobalConstant.emailValidation;
      hasError = true;
    }

    if (firstnameController.text.length < 2) {
      if (message == '') {
        message += GlobalConstant.firstnameValidation;
      } else {
        message += '\n${GlobalConstant.firstnameValidation}';
      }
      hasError = true;
    }

    if (lastnameController.text.length < 2) {
      if (message == '') {
        message += GlobalConstant.lastnameValidation;
      } else {
        message += '\n${GlobalConstant.lastnameValidation}';
      }
      hasError = true;
    }

    if (hasError) {
      SnackBarComponent.errorSnackBar(
        title: 'Fields validation',
        message: message,
      );
    } else {
      // Here where we save the new profile
      editProfileFormKey.currentState!.save();
      StorageService.firstname = firstname;
      StorageService.lastname = lastname;
      StorageService.email = email;
      StorageService.avatar = avatar;
      update();
      Get.offNamed(AppRoute.dashboardScreen);
    }
  }
}
