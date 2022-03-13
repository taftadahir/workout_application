import 'package:workout_application/models/program.dart';
import 'package:workout_application/models/workout.dart';

class ProgramController {
  static Program? getProgramById({required int programId}) => Program(
        id: programId,
        userId: 1,
        sysId: 'Program0',
        name: 'Leg Workout',
        published: true,
      );

  static List<Workout> getProgramWorkouts({required int programId}) =>
      List.generate(
        10,
        (index) => Workout(
          id: 1,
          exerciseId: 1,
          programId: programId,
          useWeight: true,
          weight: 70,
          timeBased: false,
          time: 45,
          repBased: true,
          reps: 7,
          set: 3,
          restTime: 180,
        ),
      );
}
