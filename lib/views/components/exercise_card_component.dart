import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/models/exercise.dart';
import 'package:workout_application/views/components/title_component.dart';

class ExerciseCardComponent extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCardComponent({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Get.theme.cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          child: Column(
            children: [
              exercise.image == null
                  ? Container()
                  : Image.asset(
                      'assets/images/${exercise.image}',
                      fit: BoxFit.cover,
                    ),
              SizedBox(
                height: exercise.image == null ? 0 : 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TitleComponent(
                    text: exercise.name,
                    type: GlobalConstant.exerciseCardTitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
