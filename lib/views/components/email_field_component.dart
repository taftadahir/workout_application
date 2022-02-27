import 'package:flutter/material.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/title_component.dart';

class EmailFieldComponent extends StatelessWidget {
  final bool disabled;
  final String label;
  final String hint;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  const EmailFieldComponent({
    Key? key,
    this.label = 'Email',
    this.disabled = false,
    this.hint = 'Enter your mail',
    required this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Null mean everything is fine ( no error ) -> for validator
      onSaved: onSaved,
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        label: TitleComponent(
          text: label,
          type: GlobalConstant.fieldTitle,
        ),
        hintText: hint,
        helperText: '',
        errorText: '',
        enabled: !disabled,
        suffix: const SizedBox(
          height: 32,
          width: 8,
        ),
      ),
    );
  }
}
