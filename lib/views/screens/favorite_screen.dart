import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/controllers/favorite_controller.dart';
import 'package:workout_application/views/components/exercise_card_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Layout.horizontalScreenPadding,
        vertical: Layout.verticalScreenPadding,
      ),
      child: GetBuilder<FavoriteController>(builder: (controller) {
        return ListView(
          physics: Behavior.physics,
          children: [
            const TitleComponent(
              text: 'Exercises',
              type: GlobalConstant.sectionTitle,
            ),
            const SizedBox(
              height: 24.0,
            ),
            StaggeredGrid.count(
              axisDirection: AxisDirection.down,
              // Number of column
              crossAxisCount: 2,
              // Vertical spacing
              crossAxisSpacing: Layout.verticalScreenPadding,
              // Horizontal spacing
              mainAxisSpacing: Layout.horizontalScreenPadding,
              children: controller.exercises
                  .map(
                    (exercise) => ExerciseCardComponent(
                      exercise: exercise,
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      }),
    );
  }
}
