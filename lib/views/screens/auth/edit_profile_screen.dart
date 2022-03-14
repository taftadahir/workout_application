import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/controllers/profile_controller.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/button_component.dart';
import 'package:workout_application/views/components/email_field_component.dart';
import 'package:workout_application/views/components/field_container_component.dart';
import 'package:workout_application/views/components/text_field_component.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text('Edit profile'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: Layout.horizontalScreenPadding,
            vertical: Layout.verticalScreenPadding,
          ),
          physics: Behavior.physics,
          child: GetBuilder<ProfileController>(builder: (controller) {
            return Form(
              key: controller.editProfileFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: Get.height -
                      MediaQuery.of(context).viewInsets.bottom -
                      Get.mediaQuery.padding.top -
                      Get.mediaQuery.padding.bottom -
                      88,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _screenContent(controller),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  List<Widget> _screenContent(ProfileController controller) {
    return [
      Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 200,
              maxWidth: Get.width,
            ),
            margin: const EdgeInsets.only(top: 40.0),
            child: SvgPicture.asset(
              'assets/images/app_icon.svg',
              width: Get.width,
            ),
          ),
        ],
      ),
      Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          FieldContainerComponent(
            child: TextFieldComponent(
              label: 'First name',
              hint: 'Enter your first name',
              controller: controller.firstnameController,
              onSaved: (value) => controller.firstname = value!,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FieldContainerComponent(
            child: TextFieldComponent(
              label: 'Last name',
              hint: 'Enter your last name',
              controller: controller.lastnameController,
              onSaved: (value) => controller.lastname = value!,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FieldContainerComponent(
            child: EmailFieldComponent(
              controller: controller.emailController,
              onSaved: (value) => controller.email = value!,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 240,
              maxHeight: 56,
              maxWidth: 320,
              minHeight: 56,
            ),
            child: ButtonComponent(text: 'Save', onPressed: controller.save),
          ),
        ],
      ),
    ];
  }
}
