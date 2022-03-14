import 'package:get/get.dart';
import 'package:workout_application/models/statistic.dart';

class HistoryController extends GetxController {
  late List<Statistic> statistics;

  @override
  void onInit() {
    super.onInit();
    statistics = List.generate(
      10,
      (index) => Statistic(
        id: index,
        userId: 1,
        workoutId: 1,
      ),
    );
  }
}
