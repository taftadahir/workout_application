import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:workout_application/app.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const App());
}