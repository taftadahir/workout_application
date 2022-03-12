import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/counter_controller.dart';
import 'package:workout_application/controllers/exercise_controller.dart';
import 'package:workout_application/models/exercise.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/button_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class WorkoutOnScreen extends StatelessWidget {
  final Workout workout;
  const WorkoutOnScreen({
    Key? key,
    required this.workout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Exercise? _exercise = ExerciseController.getExerciseById(
      exerciseId: workout.exerciseId,
    );
    CounterController _controller = Get.find();
    List<InlineSpan> _textForRep = [];
    if (workout.timeBased) {
      _controller.count = 240;
      _controller.start();
    } else {
      TextStyle _stylePrimary = TextStyle(
        fontSize: Get.width * .2,
        fontWeight: FontWeight.bold,
        color: context.theme.primaryColor,
      );
      TextStyle _styleSecondary = context.theme.textTheme.titleSmall!;
      _textForRep.add(TextSpan(text: '${workout.reps}', style: _stylePrimary));
      _textForRep.add(TextSpan(
        text: 'reps',
        style: _styleSecondary,
      ));
      if (workout.set != null) {
        if (workout.set! > 1) {
          _textForRep.add(const TextSpan(text: '            '));
          _textForRep
              .add(TextSpan(text: '${workout.set}', style: _stylePrimary));
          _textForRep.add(TextSpan(text: 'sets', style: _styleSecondary));
        }
      }
    }
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Layout.horizontalScreenPadding,
            vertical: Layout.horizontalScreenPadding,
          ),
          child: SingleChildScrollView(
            physics: Behavior.physics,
            child: Container(
              constraints: BoxConstraints(
                minHeight: Get.height -
                    MediaQuery.of(context).viewInsets.bottom -
                    Get.mediaQuery.padding.top -
                    Get.mediaQuery.padding.bottom -
                    120,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/${_exercise!.image}',
                        fit: BoxFit.cover,
                        width: Get.width,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TitleComponent(
                        text: _exercise.name,
                        type: GlobalConstant.exerciseViewTitle,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      workout.timeBased
                          ? GetBuilder<CounterController>(
                        builder: (controller) {
                          int _min = controller.count ~/ 60;
                          int _sec = controller.count % 60;
                          String _time =
                              (_min < 10 ? '0$_min : ' : '$_min : ') +
                                  (_sec < 10 ? '0$_sec' : '$_sec');
                          return Text(
                            _time,
                            style: TextStyle(
                              fontSize: Get.width * .2,
                              fontWeight: FontWeight.bold,
                              color: context.theme.primaryColor,
                            ),
                          );
                        },
                      )
                          : RichText(text: TextSpan(children: _textForRep)),
                      const SizedBox(height: 40),
                    ],
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 240,
                      maxHeight: 56,
                      maxWidth: 320,
                      minHeight: 56,
                    ),
                    child: ButtonComponent(
                      text: 'Done',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
