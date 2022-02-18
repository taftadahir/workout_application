import 'package:flutter/material.dart';
import 'package:workout_application/constants/global.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: Global.appName,
        home: Scaffold(),
      );
}
