import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/controllers/program_controller.dart';
import 'package:workout_application/models/program.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/workout_card_component.dart';

class ProgramDayViewScreen extends StatelessWidget {
  final Program program;
  final int day;

  const ProgramDayViewScreen(
      {Key? key, required this.program, required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Workout> _workouts = ProgramController.getProgramWorkouts(
      programId: program.id,
    );

    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        title: Text('Day $day - ' + program.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: ListView(
          physics: Behavior.physics,
          padding: const EdgeInsets.symmetric(
            horizontal: Layout.horizontalScreenPadding,
            vertical: Layout.horizontalScreenPadding,
          ),
          children: [
            Image.asset(
              'assets/images/${program.image}',
              fit: BoxFit.cover,
              width: Get.width,
            ),
            const SizedBox(
              height: 24,
            ),
            ..._workouts
                .map(
                  (workout) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: WorkoutCardComponent(workout: workout),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
