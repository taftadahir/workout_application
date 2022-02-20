import 'package:get/get.dart';

class BottomBarController extends GetxController {
  // 1 -> Home screen
  int selectedItem = 1;

  void updateSelectedItem(int index) {
    selectedItem = index;
    update();
  }
}
