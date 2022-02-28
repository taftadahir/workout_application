import 'package:flutter/material.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/title_component.dart';

class TextFieldComponent extends StatelessWidget {
  final String label;
  final String hint;
  final bool disabled;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  const TextFieldComponent({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.disabled = false,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Null mean everything is fine ( no error )
      validator: (value) => null,
      onSaved: onSaved,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        label: TitleComponent(
          text: label,
          type: GlobalConstant.fieldTitle,
        ),
        hintText: hint,
        helperText: '',
        errorText: '',
        suffix: const SizedBox(
          height: 32.0,
          width: 8.0,
        ),
      ),
    );
  }
}
