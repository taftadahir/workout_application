import 'package:workout_application/configs/theme.dart' as my_theme;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/services/theme_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: GlobalConstant.appName,
        debugShowCheckedModeBanner: false,
        theme: my_theme.Theme.light,
        darkTheme: my_theme.Theme.dark,
        themeMode: ThemeService.theme,
        home: const Scaffold(
          body: Center(
            child: TextButton(
              onPressed: ThemeService.switchTheme,
              child: Text('Change theme'),
            ),
          ),
        ),
      );
}
