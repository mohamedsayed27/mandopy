import 'package:flutter/material.dart';
import 'package:mandopy/presentation/widgets/auth_widgets/auth_text_field.dart';

import '../../../core/constants/regex.dart';

class PasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordTextFormField({Key? key, required this.controller})
      : super(key: key);

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      isPassword: isVisible,
      hintText: 'Password',
      controller: widget.controller,
      suffix: IconButton(onPressed: () {setState(() {
        isVisible = !isVisible;
      });}, icon: Icon(isVisible?Icons.visibility:Icons.visibility_off)),
      validate: (value) {
        if (!RegularExp.passwordRegex.hasMatch(value!)) {
          return "Enter Valid Password";
        }
        return null;
      },
    );
  }
}
