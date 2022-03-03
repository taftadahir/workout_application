import 'package:workout_application/bindings/app_binding.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/configs/theme.dart' as app_theme;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/services/storage_service.dart';
import 'package:workout_application/services/theme_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: GlobalConstant.appName,
        debugShowCheckedModeBanner: false,
        theme: app_theme.Theme.light,
        darkTheme: app_theme.Theme.dark,
        themeMode: ThemeService.theme,
        initialBinding: AppBinding(),
        initialRoute: StorageService.isFirstEntrance
            ? AppRoute.onboardingScreen
            : AppRoute.dashboardScreen,
        getPages: AppRoute.getPages,
      );
}
