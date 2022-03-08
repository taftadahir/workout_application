import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/bottom_bar_component.dart';
import 'package:workout_application/views/screens/drawer_screen.dart';
import 'package:workout_application/views/screens/favorite_screen.dart';
import 'package:workout_application/views/screens/home_screen.dart';
import 'package:workout_application/views/screens/routine_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static final List<Widget> _screens = [
    const RoutineScreen(),
    const HomeScreen(),
    const FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DrawerScreen(),
        _buildDashboard(),
      ],
    );
  }

  GetBuilder _buildDashboard() {
    return GetBuilder<DashboardController>(builder: (controller) {
      return WillPopScope(
        onWillPop: () async {
          if (controller.isDrawerOpen) {
            controller.closeDrawer();
            return false;
          } else {
            return true;
          }
        },
        child: GestureDetector(
          onTap: controller.closeDrawer,
          // onHorizontalDragStart: (details) => controller.isDragging = true,
          // onHorizontalDragUpdate: (details) {
          //   if (!controller.isDragging) return;
          //   const delta = 1;
          //   if (details.delta.dx > delta) {
          //     controller.openDrawer();
          //   } else if (details.delta.dx < -delta) {
          //     controller.closeDrawer();
          //   }
          //   controller.isDragging = false;
          // },
          child: AnimatedContainer(
            transform: Matrix4.translationValues(
              controller.xOffset,
              controller.yOffset,
              0,
            )..scale(controller.scaleFactor),
            duration: const Duration(
              milliseconds: 250,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                controller.isDrawerOpen ? 24 : 0,
              ),
              boxShadow: controller.isDrawerOpen
                  ? [
                      BoxShadow(
                        color: Get.theme.shadowColor,
                        offset: const Offset(-8, 0),
                        spreadRadius: 8,
                        blurRadius: 16,
                      )
                    ]
                  : [],
            ),
            child: AbsorbPointer(
              absorbing: controller.isDrawerOpen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  controller.isDrawerOpen ? 24 : 0,
                ),
                child: Scaffold(
                  appBar: AppBarComponent.getDashboardAppBar(
                    index: controller.screenIndex,
                  ),
                  bottomNavigationBar: const BottomBarComponent(),
                  body: IndexedStack(
                    children: _screens,
                    index: controller.screenIndex,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
