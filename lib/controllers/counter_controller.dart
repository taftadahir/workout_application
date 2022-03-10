import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  int _count = 0;
  late Timer _timer;

  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_count > 0) {
        _count--;
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
    _count = 0;
  }

  set count(int count) {
    _count = count;
    update();
  }

  int get count => _count;
}
