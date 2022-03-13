import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/title_component.dart';

class ProgramDayCardComponent extends StatelessWidget {
  final String title;
  final String description;
  final bool completed;

  const ProgramDayCardComponent({
    Key? key,
    required this.title,
    required this.description,
    required this.completed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 88,
        decoration: BoxDecoration(
          color: context.theme.cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
          bottom: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleComponent(
                  text: title,
                  type: GlobalConstant.programDayTitle,
                ),
                Text(description),
              ],
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color:
                    completed ? context.theme.primaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                Icons.check_rounded,
                color: completed ? context.theme.cardColor : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
