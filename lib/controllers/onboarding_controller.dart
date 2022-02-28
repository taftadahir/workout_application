import 'package:get/get.dart';
import 'package:workout_application/models/onboarding.dart';

class OnboardingController extends GetxController {
  int _screenIndex = 0;

  int get screenIndex => _screenIndex;

  set screenIndex(int index) {
    _screenIndex = index;
    update();
  }

  static List<Onboarding> get data => [
    Onboarding(
      title: 'Routine',
      image: 'routine.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
    Onboarding(
      title: 'Workouts',
      image: 'workout.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
    Onboarding(
      title: 'Programs',
      image: 'program.svg',
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum ac et urna.",
    ),
  ];
}
