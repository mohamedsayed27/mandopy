import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';

class OutlinedOrdersContainer extends StatelessWidget {
  final double height;
  final Widget child;
  const OutlinedOrdersContainer({Key? key, required this.height, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.primaryColor),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 3.h),
              blurRadius: 6.r,
              color: Colors.black.withOpacity(0.27))
        ],
      ),
      child: child,
    );
  }
}
