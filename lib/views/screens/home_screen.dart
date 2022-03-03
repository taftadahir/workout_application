import 'package:flutter/material.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/dashboard_controller.dart';
import 'package:workout_application/views/components/program_card_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        physics: Behavior.physics,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Popular Programs',
                  type: GlobalConstant.sectionTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ],
            ),
          ),
          ...DashboardController.popularPrograms
              .map(
                (program) => ProgramCardComponent(program: program),
              )
              .toList(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Calisthenic Programs',
                  type: GlobalConstant.sectionTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ],
            ),
          ),
          ...DashboardController.calisthenicPrograms
              .map(
                (program) => ProgramCardComponent(program: program),
              )
              .toList(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Bodybuilders',
                  type: GlobalConstant.sectionTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ],
            ),
          ),
          ...DashboardController.bodyBuildPrograms
              .map(
                (program) => ProgramCardComponent(program: program),
              )
              .toList(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Home Workout',
                  type: GlobalConstant.sectionTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ],
            ),
          ),
          ...DashboardController.homeWorkoutPrograms
              .map(
                (program) => ProgramCardComponent(program: program),
              )
              .toList(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TitleComponent(
                  text: 'Box Workout',
                  type: GlobalConstant.sectionTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ],
            ),
          ),
          ...DashboardController.boxingPrograms
              .map(
                (program) => ProgramCardComponent(program: program),
              )
              .toList(),
        ],
      ),
    );
  }
}
