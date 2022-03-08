import 'package:get/get.dart';
import 'package:workout_application/models/exercise.dart';

class FavoriteController extends GetxController {
  late List<Exercise> _exercises;

  @override
  void onInit() {
    super.onInit();
    // Initialize the _exercises variable
    _exercises = List.generate(
      10,
      (index) => Exercise(
        id: index,
        userId: 1,
        sysId: 'Exercise$index',
        name: 'Push Up - $index',
        published: true,
        image: 'back_lever.png',
      ),
    );
  }

  List<Exercise> get exercises => _exercises.where((exercise) => true).toList();

  set exercises(List<Exercise> exercises) {
    _exercises = exercises;
    update();
  }
}
