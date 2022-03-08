import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/controllers/login_controller.dart';
import 'package:workout_application/views/components/button_component.dart';
import 'package:workout_application/views/components/email_field_component.dart';
import 'package:workout_application/views/components/field_container_component.dart';
import 'package:workout_application/views/components/password_field_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: Behavior.physics,
          child: Form(
            key: controller.loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: Get.height -
                    MediaQuery.of(context).viewInsets.bottom -
                    Get.mediaQuery.padding.top -
                    Get.mediaQuery.padding.bottom,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Layout.horizontalScreenPadding,
                  vertical: Layout.verticalScreenPadding,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _screenContent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> get _screenContent {
    return [
      Row(
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
              Get.offNamed(AppRoute.registerScreen);
            },
            child: const Text('Register'),
          ),
        ],
      ),
      Container(
        constraints: BoxConstraints(
          maxHeight: 320,
          minHeight: 200,
          maxWidth: Get.width,
        ),
        margin: const EdgeInsets.only(top: 40.0),
        child: SvgPicture.asset(
          'assets/images/app_icon.svg',
          // width: Get.width,
        ),
      ),
      Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const TitleComponent(text: 'Sign in'),
          const SizedBox(
            height: 40.0,
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
              text: 'Login',
              onPressed: controller.login,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    ];
  }
}
