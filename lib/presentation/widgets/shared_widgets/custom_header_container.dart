import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import 'custom_back_button.dart';

class CustomHeaderContainer extends StatelessWidget {
  final Widget child;
  const CustomHeaderContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      color: AppColors.whiteColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBackButton(),
          Expanded(
            child: child,
          ),
          SizedBox(
            height: 35.h,
            width: 30.w,
          ),
        ],
      ),
    );
  }
}
