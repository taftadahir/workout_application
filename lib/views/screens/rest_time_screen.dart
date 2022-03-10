import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/counter_controller.dart';
import 'package:workout_application/models/workout.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/title_component.dart';
import 'package:workout_application/views/components/workout_card_component.dart';

class RestTimeScreen extends StatelessWidget {
  const RestTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController _controller = Get.put(CounterController());
    _controller.count = 240;
    _controller.start();
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          onPressed: () {
            Get.offNamed(AppRoute.dashboardScreen);
          },
          icon: const Icon(Icons.home_max_rounded),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: Layout.verticalScreenPadding,
                  horizontal: Layout.horizontalScreenPadding,
                ),
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TitleComponent(
                      text: 'Take a rest',
                      type: GlobalConstant.restScreenTitle,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child:
                          GetBuilder<CounterController>(builder: (controller) {
                        int _min = controller.count ~/ 60;
                        int _sec = controller.count % 60;
                        String _time = (_min < 10 ? '0$_min : ' : '$_min : ') +
                            (_sec < 10 ? '0$_sec' : '$_sec');
                        return Text(
                          _time,
                          style: TextStyle(
                            fontSize: Get.width * .2,
                            fontWeight: FontWeight.bold,
                            color: context.theme.primaryColor,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            _controller.count += 20;
                          },
                          child: const Text('+ 20 s'),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.reset();
                          },
                          child: const Text('Skip'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                context.theme.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: Layout.verticalScreenPadding,
                horizontal: Layout.horizontalScreenPadding,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Next workout',
                          style: context.theme.textTheme.titleSmall,
                        ),
                        Text(
                          '4/16',
                          style: context.theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: context.theme.scaffoldBackgroundColor,
                    thickness: 2,
                    height: 16,
                  ),
                  WorkoutCardComponent(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
