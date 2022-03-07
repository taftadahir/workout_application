import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/routine_controller.dart';
import 'package:workout_application/views/components/title_component.dart';

class CalendarComponent extends StatelessWidget {
  final RoutineController controller;

  const CalendarComponent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleComponent(
              text: 'March 2021',
              type: GlobalConstant.calendarMonth,
            ),
            TextButton(
              onPressed: () {
                controller.monthDay = DateTime.now().day;
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Text(
                'Today',
                style: TextStyle(color: Get.theme.primaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: Behavior.physics,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: Get.width - 2 * Layout.horizontalScreenPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getDayComponent(
                  weekDay: 'Mon',
                  monthDay: 3,
                  active: dayActive(day: 3),
                ),
                getDayComponent(
                  weekDay: 'Tue',
                  monthDay: 4,
                  active: dayActive(day: 4),
                ),
                getDayComponent(
                  weekDay: 'Wed',
                  monthDay: 5,
                  active: dayActive(day: 5),
                ),
                getDayComponent(
                  weekDay: 'Thu',
                  monthDay: 6,
                  active: dayActive(day: 6),
                ),
                getDayComponent(
                  weekDay: 'Fri',
                  monthDay: 7,
                  active: dayActive(day: 7),
                ),
                getDayComponent(
                  weekDay: 'Sat',
                  monthDay: 8,
                  active: dayActive(day: 8),
                ),
                getDayComponent(
                  weekDay: 'Sun',
                  monthDay: 9,
                  active: dayActive(day: 9),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  bool dayActive({required int day}) =>
      controller.monthDay == day ? true : false;

  Widget getDayComponent({
    required String weekDay,
    required int monthDay,
    required bool active,
  }) {
    TextStyle textStyle = TextStyle(
      color: active ? Get.theme.primaryColor : Get.theme.disabledColor,
      fontSize: active ? 20 : 16,
      fontWeight: active ? FontWeight.bold : FontWeight.normal,
    );
    return GestureDetector(
      onTap: () {
        controller.monthDay = monthDay;
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              weekDay,
              style: textStyle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              '$monthDay',
              style: textStyle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Icon(
              Icons.arrow_drop_up_rounded,
              color: active ? Get.theme.primaryColor : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
