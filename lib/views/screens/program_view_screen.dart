import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/program_controller.dart';
import 'package:workout_application/models/program.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/button_component.dart';
import 'package:workout_application/views/components/program_day_card_component.dart';
import 'package:workout_application/views/components/title_component.dart';
import 'package:workout_application/views/screens/program_day_view_screen.dart';

class ProgramViewScreen extends StatelessWidget {
  final Program program;

  const ProgramViewScreen({
    Key? key,
    required this.program,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _dotSize = 24;
    double _weekTitleSize = 56;
    double _programDaySize = 104;
    double _weekSpace = 24;
    List<Workout> _workouts = ProgramController.getProgramWorkouts(
      programId: program.id,
    );

    // Timeline
    List<Widget> _getTimelineWidgets(int size) => [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: (_weekTitleSize - _dotSize) / 2,
            ),
            width: _dotSize,
            height: _dotSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: context.theme.cardColor,
            ),
          ),
          SizedBox(
            height: _programDaySize * size + _weekSpace,
          ),
        ];
    List<Widget> _timelineWidgets = [];

    int _num = _workouts.length ~/ 7;
    for (int i = 0; i < _num; i++) {
      _timelineWidgets.addAll(_getTimelineWidgets(7));
    }
    if (_workouts.length % 7 != 0) {
      _timelineWidgets.addAll(_getTimelineWidgets(_workouts.length % 7));
    }
    _timelineWidgets.add(Container(
      width: _dotSize,
      height: _dotSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: context.theme.cardColor,
      ),
    ));

    // Program detail timeline
    List<Widget> _programTimeline = [];
    for (int i = 0; i < _workouts.length; i++) {
      if (i % 7 == 0) {
        _programTimeline.addAll([
          Container(
            margin: EdgeInsets.only(
                top: i == 0 || i == _workouts.length - 1 ? 0 : _weekSpace),
            height: _weekTitleSize,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TitleComponent(
                text: 'Week ${i ~/ 7 + 1}',
                type: GlobalConstant.workoutTitle,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            alignment: Alignment.centerLeft,
            child: ProgramDayCardComponent(
              title: 'Day ${i + 1}',
              description: i >= 1 ? '${i + 1} workouts' : '${i + 1} workout',
              completed: i % 3 == 0,
              onTap: () {
                Get.to(
                  ProgramDayViewScreen(program: program, day: i),
                );
              },
            ),
          ),
        ]);
      } else {
        _programTimeline.add(
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            alignment: Alignment.centerLeft,
            child: ProgramDayCardComponent(
              title: 'Day ${i + 1}',
              description: i >= 1 ? '${i + 1} workouts' : '${i + 1} workout',
              completed: i % 3 == 0,
              onTap: () {
                Get.to(
                  ProgramDayViewScreen(program: program, day: i),
                );
              },
            ),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        title: Text(program.name),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Line
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned.fill(
                      left: null,
                      right: null,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        width: 4,
                        color: context.theme.cardColor,
                      ),
                    ),
                    Column(
                      children: _timelineWidgets,
                    )
                  ],
                ),
                // Program
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _programTimeline,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 240,
                    maxHeight: 56,
                    maxWidth: 320,
                    minHeight: 56,
                  ),
                  child: ButtonComponent(
                    text: 'Start',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
