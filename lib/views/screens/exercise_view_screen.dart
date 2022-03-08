import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/models/exercise.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class ExerciseViewScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseViewScreen({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            onPressed: () => Get.back(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Layout.horizontalScreenPadding,
          vertical: Layout.verticalScreenPadding,
        ),
        child: SingleChildScrollView(
          physics: Behavior.physics,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              exercise.image == null
                  ? Container()
                  : Container(
                      margin: const EdgeInsets.only(
                        bottom: 32.0,
                        top: 8.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        'assets/images/${exercise.image}',
                        fit: BoxFit.cover,
                        width: Get.width,
                      ),
                    ),
              TitleComponent(
                text: exercise.name,
                type: GlobalConstant.exerciseViewTitle,
              ),
              SizedBox(
                height: exercise.description == null ? 0 : 16.0,
              ),
              Text(
                exercise.description ?? '',
                style: context.theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
