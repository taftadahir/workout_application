import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/title_component.dart';

class SettingItemCardComponent extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget action;

  const SettingItemCardComponent({
    Key? key,
    required this.title,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: 56,
      padding: const EdgeInsets.only(
        left: 16,
        top: 4,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 16.0,
              ),
              const SizedBox(
                width: 16.0,
              ),
              TitleComponent(
                text: title,
                type: GlobalConstant.settingItemTitle,
              ),
            ],
          ),
          action,
        ],
      ),
    );
  }
}
