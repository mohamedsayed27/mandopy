import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class AuthTextFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validate;
  final void Function()? onTap;
  final Widget? suffix;
  final Widget? prefix;
  final bool isPassword;
  final void Function(String)? onChanged;
  final bool? isEnable;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int maxLength;
  final bool readOnly;

  const AuthTextFormField({
    Key? key,
    required this.hintText,
    this.validate,
    this.suffix,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLength = 100,
    this.prefix,
    this.isPassword = false, this.isEnable, this.onTap, this.readOnly = false, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(
        color: AppColors.authTextFieldFillColor,
      ),
    );
    return TextFormField(
      enabled: isEnable,
      maxLength: maxLength,
      readOnly: readOnly,
      onTap: onTap,
      keyboardType: keyboardType,
      controller: controller,
      onChanged: onChanged,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        counter: const SizedBox.shrink(),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14.sp,
            fontFamily: FontsPath.monropeRegular),
        suffixIcon: suffix,
        prefixIcon: prefix,
        contentPadding: EdgeInsets.all(15.r),
      ),
    );
  }
}
