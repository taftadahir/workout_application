import 'package:workout_application/models/program.dart';

class ProgramController {
  static Program? getProgramById({required int programId}) => Program(
        id: programId,
        userId: 1,
        sysId: 'Program0',
        name: 'Leg Workout',
        published: true,
      );
}
