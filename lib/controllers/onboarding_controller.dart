import 'package:get/get.dart';
import 'package:workout_application/models/onboarding.dart';

class OnboardingController extends GetxController {
  int _index = 0;

  int get index => _index;

  set index(int index) {
    _index = index;
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
