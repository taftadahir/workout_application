import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/controllers/onboarding_controller.dart';
import 'package:workout_application/services/storage_service.dart';
import 'package:workout_application/views/components/dot_component.dart';
import 'package:workout_application/views/components/onboarding_component.dart';
import 'package:workout_application/views/screens/dashboard_screen.dart';

import '../components/button_component.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: Layout.verticalScreenPadding,
              left: Layout.horizontalScreenPadding,
              right: Layout.horizontalScreenPadding,
            ),
            child: Get.height < Layout.minHeight
                ? ListView(
              physics: Behavior.physics,
              children: _screenContent(controller),
            )
                : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _screenContent(controller),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _screenContent(OnboardingController controller) {
    PageController _pageController = PageController();

    return [
      Container(
        margin: const EdgeInsets.only(
          bottom: 40.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            controller.index == 0
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
            controller.index == OnboardingController.data.length - 1
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
      Expanded(
        child: PageView.builder(
          physics: Behavior.physics,
          controller: _pageController,
          onPageChanged: (int index) => controller.index = index,
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
                  currentIndex: controller.index,
                  index: index,
                ),
              ),
            ),
          ),
          Container(
            height: 48.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: Layout.horizontalScreenPadding,
            ),
            child: ButtonComponent(
              text: controller.index == OnboardingController.data.length - 1
                  ? 'CONTINUE'
                  : 'NEXT',
              onPressed: () {
                if (controller.index == OnboardingController.data.length - 1) {
                  controller.index = 0;
                  StorageService.isFirstEntrance =false;
                  Get.to(const DashboardScreen());
                } else {
                  _pageController.nextPage(
                    duration: Behavior.animationDuration,
                    curve: Curves.bounceIn,
                  );
                }
              },
            ),
          ),
        ],
      ),
    ];
  }
}
