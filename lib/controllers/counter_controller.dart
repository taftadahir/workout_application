import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;
  late Timer _timer;

  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
      } else {
        _timer.cancel();
      }
      update();
    });
  }

  void pause() {
    _timer.cancel();
    update();
  }

  void reset() {
    _timer.cancel();
    count = 0;
  }
}
