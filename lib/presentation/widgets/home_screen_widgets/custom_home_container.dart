import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';

import '../../../core/assets_path/fonts_path.dart';

class CustomHomeContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final double imageWidth;
  final double imageHeight;
  final void Function()? onTap;
  const CustomHomeContainer({Key? key, required this.title, required this.imagePath, required this.imageWidth, required this.imageHeight, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 110.h,
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(
            color: AppColors.primaryColor
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3.h),
              blurRadius: 6.r,
              color: Colors.black.withOpacity(0.27)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: FontsPath.almaraiBold,
                fontSize: 18.sp,
                color: AppColors.primaryColor,
              ),
            ),
            Image.asset(imagePath,width: imageWidth,height: imageHeight,)
          ],
        ),
      ),
    );
  }
}
