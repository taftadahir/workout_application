import 'package:get/get.dart';
import 'package:workout_application/services/storage_service.dart';
import 'package:workout_application/views/screens/auth/edit_profile_screen.dart';
import 'package:workout_application/views/screens/dashboard_screen.dart';
import 'package:workout_application/views/screens/auth/login_screen.dart';
import 'package:workout_application/views/screens/history_screen.dart';
import 'package:workout_application/views/screens/onboarding_screen.dart';
import 'package:workout_application/views/screens/auth/register_screen.dart';
import 'package:workout_application/views/screens/setting_screen.dart';

class AppRoute {
  static const String dashboardScreen = '/dashboard_screen';
  static const String onboardingScreen = '/onboarding_screen';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String favoriteScreen = '/favorite_screen';
  static const String historyScreen = '/history_screen';
  static const String aboutUsScreen = '/about_us_screen';
  static const String exercisePackScreen = '/exercise_pack_screen';
  static const String profileScreen = '/profile_screen';
  static const String settingsScreen = '/settings_screen';
  static const String logoutScreen = '/logout_screen';

  static String get initialRoute {
    if (StorageService.firstname == null ||
        StorageService.lastname == null ||
        StorageService.email == null) {
      return registerScreen;
    }
    return dashboardScreen;
  }

  static List<GetPage<dynamic>> get getPages => [
        GetPage(
          name: AppRoute.dashboardScreen,
          page: () => const DashboardScreen(),
        ),
        GetPage(
          name: AppRoute.onboardingScreen,
          page: () => const OnboardingScreen(),
        ),
        GetPage(
          name: AppRoute.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: AppRoute.registerScreen,
          page: () => const RegisterScreen(),
        ),
        GetPage(
          name: AppRoute.settingsScreen,
          page: () => const SettingScreen(),
        ),
        GetPage(
          name: AppRoute.profileScreen,
          page: () => const EditProfileScreen(),
        ),
        GetPage(
          name: AppRoute.historyScreen,
          page: () => const HistoryScreen(),
        ),
      ];
}
