import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';

class CustomText extends StatelessWidget {
  final String title;
  final String fontFamilyPath;
  final double fontSize;

  const CustomText({Key? key, required this.title, required this.fontFamilyPath, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: fontFamilyPath,
        fontSize: fontSize.sp,
        color: AppColors.blackTextColor,
      ),
    );
  }
}
