import 'package:get/get.dart';

class DashboardController extends GetxController {
  // 1 -> Home screen
  int _screenIndex = 1;

  // Drawer properties
  double _xOffset = 0;
  double _yOffset = 0;
  double _scaleFactor = 1;
  bool _isDragging = false;
  bool _isDrawerOpen = false;

  // Getters
  int get screenIndex => _screenIndex;

  double get xOffset => _xOffset;

  double get yOffset => _yOffset;

  double get scaleFactor => _scaleFactor;

  bool get isDragging => _isDragging;

  bool get isDrawerOpen => _isDrawerOpen;

  // Setters
  set screenIndex(int screenIndex) {
    _screenIndex = screenIndex;
    update();
  }

  set xOffset(double xOffset) {
    _xOffset = xOffset;
    update();
  }

  set scaleFactor(double scaleFactor) {
    _scaleFactor = scaleFactor;
    update();
  }

  set yOffset(double yOffset) {
    _yOffset = yOffset;
    update();
  }

  set isDragging(bool isDragging) {
    _isDragging = isDragging;
    update();
  }

  set isDrawerOpen(bool isDrawerOpen) {
    _isDrawerOpen = isDrawerOpen;
    update();
  }

  // Methods
  void updateScreenIndex(int index) {
    _screenIndex = index;
    update();
  }

  void openDrawer() {
    _xOffset = Get.width * 0.8;
    _yOffset = Get.height * 0.1;
    _scaleFactor = 0.8;
    _isDrawerOpen = true;
    update();
  }

  void closeDrawer() {
    _xOffset = 0;
    _yOffset = 0;
    _scaleFactor = 1;
    _isDrawerOpen = false;
    update();
  }
}
