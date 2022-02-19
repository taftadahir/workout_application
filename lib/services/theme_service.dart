import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/services/storage_service.dart';

class ThemeService {
  ThemeMode get theme =>
      StorageService.isDarkModeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    // Change the app theme
    Get.changeThemeMode(
      StorageService.isDarkModeFromStorage() ? ThemeMode.light : ThemeMode.dark,
    );

    // Save the newly saved theme
    StorageService.saveIsDarkModeToStorage(
      !StorageService.isDarkModeFromStorage(),
    );
  }
}
