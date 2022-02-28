import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/controllers/onboarding_controller.dart';
import 'package:workout_application/services/storage_service.dart';
import 'package:workout_application/views/components/dot_component.dart';
import 'package:workout_application/views/components/onboarding_component.dart';

import 'package:workout_application/views/components/button_component.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: Behavior.physics,
            child: Container(
              constraints: BoxConstraints(
                minHeight: Get.height -
                    MediaQuery.of(context).viewInsets.bottom -
                    Get.mediaQuery.padding.top -
                    Get.mediaQuery.padding.bottom,
              ),
              padding: const EdgeInsets.only(
                top: Layout.verticalScreenPadding,
                left: Layout.horizontalScreenPadding,
                right: Layout.horizontalScreenPadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _screenContent(context, controller),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _screenContent(
    BuildContext context,
    OnboardingController controller,
  ) {
    PageController _pageController = PageController();

    return [
      Container(
        margin: const EdgeInsets.only(
          bottom: 40.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            controller.screenIndex == 0
                ? Container()
                : IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Behavior.animationDuration,
                        curve: Curves.bounceIn,
                      );
                    },
                  ),
            controller.screenIndex == OnboardingController.data.length - 1
                ? Container()
                : TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(
                        OnboardingController.data.length - 1,
                      );
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
          ],
        ),
      ),
      Container(
        constraints: BoxConstraints(
          maxWidth: Get.width,
        ),
        height: Get.height -
            MediaQuery.of(context).viewInsets.bottom -
            Get.mediaQuery.padding.top -
            Get.mediaQuery.padding.bottom -
            290,
        child: PageView.builder(
          physics: Behavior.physics,
          controller: _pageController,
          onPageChanged: (int index) => controller.screenIndex = index,
          itemCount: OnboardingController.data.length,
          itemBuilder: (_, index) => OnboardingComponent(
            onboarding: OnboardingController.data[index],
          ),
        ),
      ),
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 56.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                OnboardingController.data.length,
                (index) => DotComponent(
                  currentIndex: controller.screenIndex,
                  index: index,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 240,
              maxHeight: 56,
              maxWidth: 320,
              minHeight: 56,
            ),
            child: ButtonComponent(
              text: controller.screenIndex == OnboardingController.data.length - 1
                  ? 'CONTINUE'
                  : 'NEXT',
              onPressed: () {
                if (controller.screenIndex == OnboardingController.data.length - 1) {
                  controller.screenIndex = 0;
                  StorageService.isFirstEntrance = false;
                  Get.offNamed(AppRoute.dashboardScreen);
                } else {
                  _pageController.nextPage(
                    duration: Behavior.animationDuration,
                    curve: Curves.bounceIn,
                  );
                }
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    ];
  }
}
