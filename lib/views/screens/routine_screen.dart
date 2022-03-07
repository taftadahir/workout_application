import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/routine_controller.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/calendar_component.dart';
import 'package:workout_application/views/components/title_component.dart';
import 'package:workout_application/views/components/workout_card_component.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.horizontalScreenPadding,
      ),
      child: GetBuilder<RoutineController>(builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CalendarComponent(
              controller: controller,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Workouts',
                  type: GlobalConstant.sectionTitle,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: ListView.builder(
                physics: Behavior.physics,
                itemCount: controller.workouts.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: WorkoutCardComponent(
                    workout: Workout(
                      id: 1,
                      exerciseId: 1,
                      programId: 1,
                      useWeight: true,
                      weight: 70,
                      timeBased: true,
                      time: 45,
                      repBased: true,
                      reps: 7,
                      set: 3,
                      restTime: 180,
                    ),
                    style: WorkoutCardStyle.style2,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
