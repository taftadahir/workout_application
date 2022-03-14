import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/controllers/register_controller.dart';
import 'package:workout_application/views/components/email_field_component.dart';
import 'package:workout_application/views/components/field_container_component.dart';
import 'package:workout_application/views/components/password_field_component.dart';
import 'package:workout_application/views/components/text_field_component.dart';
import 'package:workout_application/views/components/title_component.dart';
import 'package:workout_application/views/components/button_component.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: Behavior.physics,
            padding: const EdgeInsets.only(
              left: Layout.horizontalScreenPadding,
              right: Layout.horizontalScreenPadding,
            ),
            child: Form(
              key: controller.registerFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: Get.height -
                      MediaQuery.of(context).viewInsets.bottom -
                      Get.mediaQuery.padding.top -
                      Get.mediaQuery.padding.bottom,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _screenContent(
                    context: context,
                    controller: controller,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  List<Widget> _screenContent({
    required BuildContext context,
    required RegisterController controller,
  }) {
    return [
      Container(
        margin: const EdgeInsets.only(
          bottom: 40.0,
          top: Layout.verticalScreenPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.offNamed(AppRoute.dashboardScreen);
              },
              icon: const Icon(Icons.home_max_rounded),
            ),
            TextButton(
              onPressed: () {
                Get.offNamed(AppRoute.loginScreen);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
      Container(
        constraints: BoxConstraints(
          maxHeight: 320,
          minHeight: 200,
          maxWidth: Get.width,
        ),
        margin: const EdgeInsets.only(
          top: 40.0,
          left: Layout.horizontalScreenPadding,
          right: Layout.horizontalScreenPadding,
        ),
        child: SvgPicture.asset(
          'assets/images/app_icon.svg',
          width: Get.width,
        ),
      ),
      Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const TitleComponent(text: 'Register'),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            children: [
              FieldContainerComponent(
                child: TextFieldComponent(
                  label: 'First name',
                  hint: 'Enter your first name',
                  controller: controller.firstnameController,
                  onSaved: (value) => controller.firstname = value!,
                ),
              ),
              const SizedBox(
                height: 8.0,
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
                height: 8.0,
              ),
              FieldContainerComponent(
                child: EmailFieldComponent(
                  controller: controller.emailController,
                  onSaved: (value) => controller.email = value!,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              FieldContainerComponent(
                child: PasswordFieldComponent(
                  controller: controller.passwordController,
                  onSaved: (value) => controller.password = value!,
                ),
              ),
            ],
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
            child: ButtonComponent(
              text: 'Register',
              onPressed: controller.register,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      )
    ];
  }
}
