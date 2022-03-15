import 'package:workout_application/models/workout.dart';

class WorkoutController {
  static Workout? getWorkoutById(int workoutId) => Workout(
    id: workoutId,
    exerciseId: 1,
    programId: 1,
    timeBased: true,
    time: 240,
    repBased: false,
    useWeight: false,
  );
}
