import 'package:get/get.dart';
import 'package:workout_application/controllers/bottom_bar_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Implement dependencies
    Get.lazyPut(() => BottomBarController());
  }
}