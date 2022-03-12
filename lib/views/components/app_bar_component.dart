import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/services/theme_service.dart';
import 'package:workout_application/views/screens/rest_time_screen.dart';

import 'dart:math' as math;

class AppBarComponent {
  static final Widget _menu = GetBuilder(
      init: DashboardController(),
      builder: (DashboardController controller) {
        return IconButton(
          onPressed: () => controller.openDrawer(),
          icon: Transform.rotate(
            angle: math.pi / 2,
            child: const Icon(
              // Icons.menu_rounded,
              Icons.bar_chart_rounded,
            ),
          ),
        );
      });

  static AppBar getAppBar({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return AppBar(
      leading: leading,
      title: title,
      titleSpacing: 8.0,
      actions: actions,
    );
  }

  static AppBar? getDashboardAppBar({required int index}) {
    switch (index) {
      case 0:
        return getAppBar(
          leading: _menu,
          title: const Text('Routine'),
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(
                    const RestTimeScreen(),
                  );
                },
                child: const Text('Start'),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        );

      case 1:
        return getAppBar(
          leading: _menu,
          title: const Text('Home'),
          actions: [
            const IconButton(
              icon: Icon(
                Icons.invert_colors_rounded,
                size: 32.0,
              ),
              onPressed: ThemeService.switchTheme,
            ),
            const SizedBox(width: 8.0),
          ],
        );
      case 2:
        return getAppBar(
          leading: _menu,
          title: const Text('Favorite'),
        );
      default:
        return null;
    }
  }
}
