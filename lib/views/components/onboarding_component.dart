import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/models/onboarding.dart';

class OnboardingComponent extends StatelessWidget {
  final Onboarding onboarding;

  const OnboardingComponent({
    Key? key,
    required this.onboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width > Layout.maxWidth ? Layout.maxWidth : Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 320,
                  minHeight: 200,
                  maxWidth: Get.width,
                ),
                child: SvgPicture.asset(
                  'assets/images/${onboarding.image}',
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            onboarding.title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            onboarding.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
