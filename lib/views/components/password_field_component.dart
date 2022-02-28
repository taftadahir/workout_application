import 'package:flutter/material.dart';
import 'package:workout_application/constants/global_constant.dart';
import 'package:workout_application/views/components/title_component.dart';

class PasswordFieldComponent extends StatelessWidget {
  final bool obscurePassword;
  final String obscuringCharacter;
  final String label;
  final String hint;
  final bool disabled;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  const PasswordFieldComponent({
    Key? key,
    this.hint = 'Enter your password',
    this.label = 'Password field',
    this.obscurePassword = true,
    this.obscuringCharacter = '*',
    required this.controller,
    this.disabled = false,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Null mean everything is fine ( no error ) -> for validator
      validator: (value) => null,
      onSaved: onSaved,
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscurePassword,
      obscuringCharacter: obscuringCharacter,
      enableSuggestions: false,
      autocorrect: false,
      enabled: !disabled,
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
        suffix: const SizedBox(
          height: 32.0,
          width: 8.0,
        ),
      ),
    );
  }
}
