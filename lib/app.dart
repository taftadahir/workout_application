import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const GetMaterialApp(
        title: GlobalConstant.appName,
        debugShowCheckedModeBanner: false,
        home: Scaffold(),
      );
}
