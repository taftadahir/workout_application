import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/controllers/history_controller.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/statistic_component.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: const Text('History'),
      ),
      body: SafeArea(
        child: GetBuilder<HistoryController>(builder: (controller) {
          return ListView(
            physics: Behavior.physics,
            padding: const EdgeInsets.symmetric(
              horizontal: Layout.horizontalScreenPadding,
              vertical: Layout.verticalScreenPadding,
            ),
            children: controller.statistics
                .map(
                  (statistic) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: StatisticComponent(
                      statistic: statistic,
                      style: StatisticCardStyle.style2,
                    ),
                  ),
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
