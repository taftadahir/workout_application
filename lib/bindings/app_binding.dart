import 'package:get/get.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/controllers/home_controller.dart';
import 'package:workout_application/controllers/login_controller.dart';
import 'package:workout_application/controllers/onboarding_controller.dart';
import 'package:workout_application/controllers/register_controller.dart';
import 'package:workout_application/controllers/routine_controller.dart';

class AppBinding extends Bindings {

  @override
  void dependencies() {
    // Implement dependencies
    Get.lazyPut(() => DashboardController());

    // fenix = true => these controllers will be reinitialized when needed
    Get.lazyPut(() => OnboardingController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => RegisterController(), fenix: true);
    Get.lazyPut(() => RoutineController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}