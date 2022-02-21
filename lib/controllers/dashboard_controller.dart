import 'package:get/get.dart';

class DashboardController extends GetxController {
  // 1 -> Home screen
  int screenIndex = 1;

  void updateScreenIndex(int index) {
    screenIndex = index;
    update();
  }
}
