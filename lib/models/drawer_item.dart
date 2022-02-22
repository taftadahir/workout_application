import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  const DrawerItem({required this.title, required this.icon});
}

const DrawerItem _home = DrawerItem(
  title: 'Home',
  icon: Icons.home_max_rounded,
);
const DrawerItem _favorites = DrawerItem(
  title: 'Favorite',
  icon: Icons.favorite_border_rounded,
);
const DrawerItem _history = DrawerItem(
  title: 'History',
  icon: Icons.bar_chart_rounded,
);
const DrawerItem _aboutUs = DrawerItem(
  title: 'About Us',
  icon: Icons.bubble_chart_rounded,
);
const DrawerItem _exercisePack = DrawerItem(
  title: 'Exercise Pack',
  icon: Icons.bolt_rounded,
);
const DrawerItem _profile = DrawerItem(
  title: 'Profile',
  icon: Icons.account_circle_rounded,
);
const DrawerItem _settings = DrawerItem(
  title: 'Settings',
  icon: Icons.settings,
);
const DrawerItem _logout = DrawerItem(
  title: 'Logout',
  icon: Icons.logout,
);
const DrawerItem _onboarding= DrawerItem(
  title: 'Onboarding',
  icon: Icons.crop_7_5_rounded ,
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
