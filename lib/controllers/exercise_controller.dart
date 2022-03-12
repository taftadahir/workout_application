import 'package:workout_application/models/exercise.dart';

class ExerciseController {
  static Exercise? getExerciseById({required int exerciseId}) => Exercise(
        id: exerciseId,
        userId: 1,
        sysId: 'Exercise0',
        name: 'Push Up',
        published: true,
        image: 'back_lever.png',
      );
}
