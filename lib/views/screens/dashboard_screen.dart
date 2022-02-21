import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/bottom_bar_component.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      Container(
        color: Colors.redAccent,
      ),
      Container(
        color: Colors.blueAccent,
      ),
      Container(
        color: Colors.deepPurpleAccent,
      ),
    ];
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        appBar: AppBarComponent.getDashboardAppBar(index: controller.screenIndex),
        bottomNavigationBar: const BottomBarComponent(),
        body: IndexedStack(
          children: _screens,
          index: controller.screenIndex,
        ),
      ),
    );
  }
}
