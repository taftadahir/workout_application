import 'package:get/get.dart';
import 'package:workout_application/models/exercise.dart';

class FavoriteController extends GetxController {
  late List<Exercise> _exercises;

  @override
  void onInit() {
    super.onInit();
    List<String> _images = [
      'back_lever.png',
      'front_lever.png',
      'handstand.png',
      'handstand_push_up.png',
      'human_flag.png',
      'muscle_up.png',
      'one_arm_front_lever.png',
      'pistol_squat.png',
      'planche.png',
      'v_sit.png',
    ];

    List<String> _names = [
      'Back Lever',
      'Front Lever',
      'Handstand',
      'Handstand Push Up',
      'Human Flag',
      'Muscle Up',
      'One Arm Front Lever',
      'Pistol Squat',
      'Planche',
      'V sit',
    ]; // Initialize the _exercises variable
    _exercises = List.generate(
      10,
      (index) => Exercise(
        id: index,
        userId: 1,
        sysId: 'Exercise$index',
        name: _names[index],
        published: true,
        image: _images[index],
        description: index % 2 == 0
            ? 'In the previous post, I wrote about what the box '
                'constraints are and how they work at a very basic level. In this'
                ' post I will talk about how they work with Row and Column '
                'widgets. In the previous post, I wrote about what the box '
                'constraints are and how they work at a very basic level. In this'
                ' post I will talk about how they work with Row and Column '
                'widgets. In the previous post, I wrote about what the box '
                'constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets. In the previous post, I wrote about what the box constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets. In the previous post, I wrote about what the box constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets. In the previous post, I wrote about what the box constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets. In the previous post, I wrote about what the box constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets. In the previous post, I wrote about what the box constraints are and how they work at a very basic level. In this post I will talk about how they work with Row and Column widgets.'
            : 'In the previous post, I wrote about what the box '
                'constraints are and how they work at a very basic level. In this'
                ' post I will talk about how they work with Row and Column '
                'widgets. In the previous post, I wrote about what the box ',
      ),
    );
  }

  List<Exercise> get exercises => _exercises.where((exercise) => true).toList();

  set exercises(List<Exercise> exercises) {
    _exercises = exercises;
    update();
  }
}
