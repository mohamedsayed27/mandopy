import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 105.w,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Center(
        child: Text(
          "S",
          style: TextStyle(
            fontFamily: FontsPath.productSansRegular,
            fontSize: 54.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
