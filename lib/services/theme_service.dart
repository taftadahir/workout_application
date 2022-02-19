import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/services/storage_service.dart';

class ThemeService{
  ThemeMode get theme => StorageService().isDarkModeFromStorage() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(StorageService().isDarkModeFromStorage() ? ThemeMode.light : ThemeMode.dark);
    StorageService().saveIsDarkModeToStorage(!StorageService().isDarkModeFromStorage());
  }
}