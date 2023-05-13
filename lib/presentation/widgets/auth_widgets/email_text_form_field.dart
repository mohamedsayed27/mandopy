import 'package:flutter/material.dart';
import 'package:mandopy/core/constants/app_strings.dart';
import 'package:mandopy/presentation/widgets/auth_widgets/auth_text_field.dart';

import '../../../core/constants/regex.dart';

class EmailTextFormField extends StatefulWidget {
  final TextEditingController controller;

  const EmailTextFormField({Key? key, required this.controller})
      : super(key: key);

  @override
  State<EmailTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<EmailTextFormField> {
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      hintText: AppStrings.email,
      controller: widget.controller,
      suffix: isEmailValid
          ? const Icon(
              Icons.done,
              color: Colors.green,
            )
          : const Icon(
              Icons.clear,
              color: Colors.red,
            ),
      onChanged: (value) {
        if (!RegularExp.emailRegex.hasMatch(value) && isEmailValid) {
          setState(() {
            isEmailValid = false;
          });
        } else if (RegularExp.emailRegex.hasMatch(value) && !isEmailValid) {
          setState(() {
            isEmailValid = true;
          });
        }
      },
      validate: (value) {
        if (!RegularExp.emailRegex.hasMatch(value!)) {
          return AppStrings.emailValidation;
        }
        return null;
      },
    );
  }
}
