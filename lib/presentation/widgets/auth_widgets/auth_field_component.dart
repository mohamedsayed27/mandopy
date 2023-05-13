import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class AuthFieldComponent extends StatelessWidget {
  final String title;
  final Widget child;
  const AuthFieldComponent({Key? key, required this.title, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.blackTextColor,
            fontFamily: FontsPath.productSansRegular,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 10.h,),
        child,
      ],
    );
  }
}
