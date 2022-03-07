import 'package:get/get.dart';
import 'package:workout_application/models/workout.dart';

class RoutineController extends GetxController {
  int _monthDay = DateTime.now().day;
  late List<Workout> _workouts;

  @override
  onInit() {
    super.onInit();
    _workouts = List.generate(
      10,
          (index) => Workout(
        id: index,
        exerciseId: 1,
        programId: 1,
        timeBased: true,
        repBased: true,
        useWeight: true,
      ),
    );
  }

  int get monthDay => _monthDay;

  set monthDay(int montDay) {
    _monthDay = montDay;
    update();
  }

  List<Workout> get workouts => _workouts.where((workout) => true).toList();

  set workouts(List<Workout> workouts) {
    _workouts = workouts;
    update();
  }
}
