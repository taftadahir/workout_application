import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/configs/behavior.dart';
import 'package:workout_application/configs/layout.dart';
import 'package:workout_application/configs/routes.dart';
import 'package:workout_application/services/theme_service.dart';
import 'package:workout_application/views/components/app_bar_component.dart';
import 'package:workout_application/views/components/setting_item_card_component.dart';
import 'package:workout_application/views/components/setting_item_group_component.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent.getAppBar(
        leading: IconButton(
          onPressed: () {
            Get.offNamed(AppRoute.dashboardScreen);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text('Settings'),
      ),
      body: SafeArea(
        child: ListView(
          physics: Behavior.physics,
          padding: const EdgeInsets.only(
            top: 24,
            left: Layout.horizontalScreenPadding,
            right: Layout.horizontalScreenPadding,
          ),
          children: [
            SettingItemGroupComponent(
              title: 'General',
              items: [
                const SettingItemCardComponent(
                  title: 'Switch theme',
                  icon: Icons.dark_mode_rounded,
                  action: IconButton(
                    icon: Icon(Icons.invert_colors_rounded),
                    onPressed: ThemeService.switchTheme,
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Notification',
                  icon: Icons.notifications,
                  action: IconButton(
                    icon: const Icon(
                      Icons.check_rounded,
                    ),
                    onPressed: () {},
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Language',
                  icon: Icons.language_rounded,
                  action: IconButton(
                    icon: const Text('fr'),
                    onPressed: () {},
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Sound',
                  icon: Icons.surround_sound,
                  action: IconButton(
                    icon: const Icon(
                      Icons.check_rounded,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SettingItemGroupComponent(
              title: 'Synchronization',
              items: [
                SettingItemCardComponent(
                  title: 'AutoSync',
                  icon: Icons.sync_rounded,
                  action: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_rounded,
                    ),
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Sync now',
                  icon: Icons.sync_rounded,
                  action: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sync_rounded,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SettingItemGroupComponent(
              title: 'Reminder',
              items: [
                SettingItemCardComponent(
                  title: 'Days',
                  icon: Icons.calendar_today_rounded,
                  action: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'M',
                          style: TextStyle(
                            color: context.theme.primaryColor,
                          ),
                        ),
                        Text(
                          ' T ',
                          style: TextStyle(
                            color: context.theme.primaryColor,
                          ),
                        ),
                        const Text(' W '),
                        Text(
                          ' T ',
                          style: TextStyle(
                            color: context.theme.primaryColor,
                          ),
                        ),
                        const Text(' F '),
                        const Text(' S '),
                        const Text(' S '),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Time',
                  icon: Icons.timer_rounded,
                  action: TextButton(
                    onPressed: () {},
                    child: const Text('08 : 00'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SettingItemGroupComponent(
              title: 'Workouts',
              items: [
                SettingItemCardComponent(
                  title: 'Warm Up',
                  icon: Icons.not_started_rounded,
                  action: IconButton(
                    icon: const Icon(
                      Icons.check_rounded,
                    ),
                    onPressed: () {},
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Rest time',
                  icon: Icons.timelapse_rounded,
                  action: TextButton(
                    onPressed: () {},
                    child: const Text('30s'),
                  ),
                ),
                SettingItemCardComponent(
                  title: 'Count down time',
                  icon: Icons.timelapse_rounded,
                  action: TextButton(
                    onPressed: () {},
                    child: const Text('30s'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Layout.verticalScreenPadding,
            )
          ],
        ),
      ),
    );
  }
}
