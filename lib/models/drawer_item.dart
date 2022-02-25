import 'package:flutter/material.dart';
import 'package:workout_application/configs/routes.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  final String type;

  const DrawerItem({
    required this.title,
    required this.icon,
    required this.type,
  });
}

const DrawerItem _home = DrawerItem(
  title: 'Home',
  icon: Icons.home_max_rounded,
  type: AppRoute.dashboardScreen,
);
const DrawerItem _favorites = DrawerItem(
  title: 'Favorite',
  icon: Icons.favorite_border_rounded,
  type: 'Favorite',
);
const DrawerItem _history = DrawerItem(
  title: 'History',
  icon: Icons.bar_chart_rounded,
  type: 'History',
);
const DrawerItem _aboutUs = DrawerItem(
  title: 'About Us',
  icon: Icons.bubble_chart_rounded,
  type: 'About Us',
);
const DrawerItem _exercisePack = DrawerItem(
  title: 'Exercise Pack',
  icon: Icons.bolt_rounded,
  type: 'ExercisePack',
);
const DrawerItem _profile = DrawerItem(
  title: 'Profile',
  icon: Icons.account_circle_rounded,
  type: 'Profile',
);
const DrawerItem _settings = DrawerItem(
  title: 'Settings',
  icon: Icons.settings,
  type: 'Settings',
);
const DrawerItem _logout = DrawerItem(
  title: 'Logout',
  icon: Icons.logout,
  type: 'Logout',
);
const DrawerItem _onboarding = DrawerItem(
  title: 'Onboarding',
  icon: Icons.crop_7_5_rounded,
  type: AppRoute.onboardingScreen,
);

final List<DrawerItem> drawerItems = [
  // _home,
  // _profile,
  _favorites,
  _history,
  _exercisePack,
  _onboarding,
  _settings,
  _aboutUs,
  _logout,
];
