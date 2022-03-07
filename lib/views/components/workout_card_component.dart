import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/exercise_controller.dart';
import 'package:workout_application/models/exercise.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/title_component.dart';

class WorkoutCardComponent extends StatelessWidget {
  final Workout workout;
  final WorkoutCardStyle style;
  final double _cardHeight = 112.0;
  final double _spaceBetweenDetail = 24.0;
  final double _radius = 16.0;

  const WorkoutCardComponent({
    Key? key,
    required this.workout,
    this.style = WorkoutCardStyle.style1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Exercise? _exercise = ExerciseController.getExerciseById(
      exerciseId: workout.exerciseId,
    );
    return _exercise != null
        ? GestureDetector(
            onTap: () {},
            child: Container(
              height: _cardHeight,
              padding: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: BorderRadius.circular(_radius),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: _workoutContent(exercise: _exercise),
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

  List<Widget> _workoutContent({required Exercise exercise}) {
    Widget _workoutName = TitleComponent(
      text: exercise.name,
      type: GlobalConstant.workoutTitle,
    );
    List<Widget> _workoutDetailStyle1 = workout.repBased ||
            workout.timeBased ||
            workout.set != null ||
            workout.restTime != null ||
            workout.useWeight
        ? [
            _workoutName,
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: Behavior.physics,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Set
                  workout.set == null
                      ? Container()
                      : Row(
                          children: [
                            const TitleComponent(
                              text: 'Set',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('${workout.set}'),
                            SizedBox(
                              width: _spaceBetweenDetail,
                            ),
                          ],
                        ),
                  // Rep
                  workout.repBased
                      ? Row(
                          children: [
                            const TitleComponent(
                              text: 'Rep',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('${workout.reps}'),
                            SizedBox(
                              width: _spaceBetweenDetail,
                            ),
                          ],
                        )
                      : Container(),
                  // Time
                  workout.timeBased
                      ? Row(
                          children: [
                            const TitleComponent(
                              text: 'Time',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('${workout.time} sec'),
                            SizedBox(
                              width: _spaceBetweenDetail,
                            ),
                          ],
                        )
                      : Container(),
                  // Weight
                  workout.useWeight
                      ? Row(
                          children: [
                            const TitleComponent(
                              text: 'Weight',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('${workout.weight} kg'),
                            SizedBox(
                              width: _spaceBetweenDetail,
                            ),
                          ],
                        )
                      : Container(),
                  // Rest
                  workout.restTime == null
                      ? Container()
                      : Row(
                          children: [
                            const TitleComponent(
                              text: 'Rest',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('${workout.restTime} sec'),
                          ],
                        ),
                ],
              ),
            ),
          ]
        : [_workoutName];

    List<Widget> _workoutDetailStyle2 = workout.repBased ||
            workout.timeBased ||
            workout.set != null ||
            workout.restTime != null ||
            workout.useWeight
        ? [
            _workoutName,
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: Behavior.physics,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Set
                  workout.set == null
                      ? Container()
                      : Column(
                          children: [
                            const TitleComponent(
                              text: 'Set',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('${workout.set}'),
                          ],
                        ),
                  SizedBox(
                    width: _spaceBetweenDetail,
                  ),
                  // Rep
                  workout.repBased
                      ? Column(
                          children: [
                            const TitleComponent(
                              text: 'Rep',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('${workout.reps}'),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    width: _spaceBetweenDetail,
                  ),
                  // Time
                  workout.timeBased
                      ? Column(
                          children: [
                            const TitleComponent(
                              text: 'Time',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('${workout.time} sec'),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    width: _spaceBetweenDetail,
                  ),
                  // Weight
                  workout.useWeight
                      ? Column(
                          children: [
                            const TitleComponent(
                              text: 'Weight',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('${workout.weight} kg'),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    width: _spaceBetweenDetail,
                  ),
                  // Rest
                  workout.restTime == null
                      ? Container()
                      : Column(
                          children: [
                            const TitleComponent(
                              text: 'Rest',
                              type: GlobalConstant.workoutDetailTitle,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('${workout.restTime} sec'),
                          ],
                        ),
                ],
              ),
            ),
          ]
        : [_workoutName];

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
          children: style == WorkoutCardStyle.style1
              ? _workoutDetailStyle1
              : _workoutDetailStyle2,
        ),
      ),
    ];
  }
}

enum WorkoutCardStyle {
  // Workout details all in one line
  style1,

  // Workout detail on column
  style2,
}
