import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';


class CustomContainer extends StatelessWidget {
  final double height;
  final double? width;
  final Widget child;
  final double horizontalPadding;
  final double verticalPadding;
  final Color? borderColor;
  final void Function()? onTap;
  const CustomContainer({Key? key, required this.height, required this.child, this.width, required this.horizontalPadding, required this.verticalPadding, this.borderColor, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width??double.infinity,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: borderColor??AppColors.whiteColor,
              width: 2.w
            ),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 1.h),
                  blurRadius: 4.r,
                  color: Colors.black.withOpacity(0.16)
              )
            ]
        ),
        child: child,
      ),
    );
  }
}
