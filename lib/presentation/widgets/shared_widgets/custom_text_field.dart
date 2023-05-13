import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final double? height;
  final bool isEnable;
  const CustomTextFormField({Key? key, required this.hintText, this.controller, this.height,this.isEnable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder border = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    );
    return SizedBox(
      height: height?.h,
      child: TextFormField(
        enabled: isEnable,
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontFamily: FontsPath.almaraiRegular,
          fontSize: 14.sp,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: FontsPath.almaraiRegular,
            fontSize: 11.sp,
          ),

        ),
      ),
    );
  }
}
