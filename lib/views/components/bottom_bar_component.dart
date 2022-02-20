import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/controllers/bottom_bar_controller.dart';

class BottomBarComponent extends StatelessWidget {
  const BottomBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      builder: (controller) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.selectedItem,
        elevation: 0.0,
        onTap: controller.updateSelectedItem,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            label: 'Routine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
