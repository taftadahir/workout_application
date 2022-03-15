import 'package:flutter/material.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/exercise_controller.dart';
import 'package:workout_application/controllers/workout_controller.dart';
import 'package:workout_application/models/exercise.dart';
import 'package:workout_application/models/statistic.dart';
import 'package:get/get.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/title_component.dart';

class StatisticComponent extends StatelessWidget {
  final Statistic statistic;
  final StatisticCardStyle style;
  final double _cardHeight = 120.0;
  final double _spaceBetweenDetail = 24.0;
  final double _radius = 16.0;

  const StatisticComponent({
    Key? key,
    required this.statistic,
    this.style = StatisticCardStyle.style1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Workout? _workout = WorkoutController.getWorkoutById(
      statistic.workoutId,
    );
    Exercise? _exercise;

    if (_workout != null) {
      _exercise = ExerciseController.getExerciseById(
        exerciseId: _workout.exerciseId,
      );
    }
    return _exercise != null && _workout != null
        ? GestureDetector(
      onTap: () {},
      child: Container(
        height: _cardHeight,
        padding: const EdgeInsets.only(
          right: Layout.horizontalScreenPadding,
        ),
        decoration: BoxDecoration(
          color: context.theme.cardColor,
          borderRadius: BorderRadius.circular(_radius),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: _screenContent(
            statistic: statistic,
            workout: _workout,
            exercise: _exercise,
          ),
        ),
      ),
    )
        : Container(
      height: _cardHeight,
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(_radius),
      ),
      child: const Center(
        child: Text(GlobalConstant.exerciseNotFound),
      ),
    );
  }

  List<Widget> _screenContent({
    required Statistic statistic,
    required Workout workout,
    required Exercise exercise,
  }) {
    Widget? _workoutName = TitleComponent(
      text: exercise.name,
      type: GlobalConstant.workoutTitle,
    );
    String _noData = '---';

    List<Widget> _contentStyle1 = [
      _workoutName,
      const SizedBox(
        height: 16,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: Behavior.physics,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Set
            Row(
              children: [
                const TitleComponent(
                  text: 'Set',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(statistic.set == null ? _noData : '${statistic.set}'),
                SizedBox(
                  width: _spaceBetweenDetail,
                ),
              ],
            ),
            // Rep
            Row(
              children: [
                const TitleComponent(
                  text: 'Rep',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(statistic.reps == null ? _noData : '${statistic.reps}'),
                SizedBox(
                  width: _spaceBetweenDetail,
                ),
              ],
            ),

            // Time
            Row(
              children: [
                const TitleComponent(
                  text: 'Time',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                    statistic.time == null ? _noData : '${statistic.time} sec'),
                SizedBox(
                  width: _spaceBetweenDetail,
                ),
              ],
            ),
            // Weight
            Row(
              children: [
                const TitleComponent(
                  text: 'Weight',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(statistic.weight == null
                    ? _noData
                    : '${statistic.weight} kg'),
                SizedBox(
                  width: _spaceBetweenDetail,
                ),
              ],
            ),
          ],
        ),
      ),
    ];

    List<Widget> _contentStyle2 = [
      _workoutName,
      const SizedBox(
        height: 4,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: Behavior.physics,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Set
            Column(
              children: [
                const TitleComponent(
                  text: 'Set',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                Text(statistic.set == null ? _noData : '${statistic.set}'),
              ],
            ),
            SizedBox(
              width: _spaceBetweenDetail,
            ),
            // Rep
            Column(
              children: [
                const TitleComponent(
                  text: 'Rep',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                Text(statistic.reps == null ? _noData : '${statistic.reps}'),
              ],
            ),
            SizedBox(
              width: _spaceBetweenDetail,
            ),
            // Time
            Column(
              children: [
                const TitleComponent(
                  text: 'Time',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                Text(
                    statistic.time == null ? _noData : '${statistic.time} sec'),
              ],
            ),
            SizedBox(
              width: _spaceBetweenDetail,
            ),
            // Weight
            Column(
              children: [
                const TitleComponent(
                  text: 'Weight',
                  type: GlobalConstant.workoutDetailTitle,
                ),
                Text(statistic.weight == null
                    ? _noData
                    : '${statistic.weight} kg'),
              ],
            ),
            SizedBox(
              width: _spaceBetweenDetail,
            ),
          ],
        ),
      ),
    ];

    return [
      Container(
        width: _cardHeight,
        height: _cardHeight,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: const DecorationImage(
            //TODO: Need to change this with exercise image
            image: AssetImage('assets/images/handstand.png'), //
            fit: BoxFit.cover,
          ),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: style == StatisticCardStyle.style1
              ? _contentStyle1
              : _contentStyle2,
        ),
      ),
    ];
  }
}

enum StatisticCardStyle {
  style1,
  style2,
}
