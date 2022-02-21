import 'package:flutter/material.dart';

class AppBarComponent {
  static const IconData _menuIcon = Icons.menu_rounded;

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
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              _menuIcon,
            ),
          ),
          title: const Text('Routine'),
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text('Start'),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        );

      case 1:
        return getAppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(_menuIcon),
          ),
          title: const Text('Home'),
          actions: const [
            Icon(
              Icons.account_circle_rounded,
              size: 32.0,
            ),
            SizedBox(width: 8.0),
          ],
        );
      case 2:
        return getAppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(_menuIcon),
          ),
          title: const Text('Favorite'),
        );
      default:
        return null;
    }
  }
}
