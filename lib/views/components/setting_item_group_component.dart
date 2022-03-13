import 'package:flutter/material.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/setting_item_card_component.dart';
import 'package:workout_application/views/components/title_component.dart';

class SettingItemGroupComponent extends StatelessWidget {
  final String title;
  final List<SettingItemCardComponent> items;

  const SettingItemGroupComponent({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: TitleComponent(
            text: title,
            type: GlobalConstant.settingGroupTitle,
          ),
        ),
        ...items
            .map(
              (child) => Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: child,
              ),
            )
            .toList(),
      ],
    );
  }
}
