import 'package:get/get.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/controllers/onboarding_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Implement dependencies
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => OnboardingController());
  }
}