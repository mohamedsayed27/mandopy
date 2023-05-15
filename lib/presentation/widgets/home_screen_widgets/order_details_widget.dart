import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mandopy/core/assets_path/svg_path.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/constants/app_strings.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 232.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1.h),
              blurRadius: 4.r,
              color: Colors.black.withOpacity(0.16))
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                SvgPath.fromLocation,
                width: 18.w,
                height: 18.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.receiveFrom,
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'التجمع الخامس',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 11.sp,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                SvgPath.toLocation,
                width: 18.w,
                height: 18.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.deliverTo,
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'التجمع الخامس',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 11.sp,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          const Divider(),
          SizedBox(height: 5.h,),
          priceDetailsWidget(title: "سعر التوصيل", price: "50 ج"),
          SizedBox(height: 5.h,),
          const Divider(),
          SizedBox(height: 5.h,),
          priceDetailsWidget(title: "تأمين الشحنة", price: "50 ج"),
        ],
      ),
    );
  }

  Widget priceDetailsWidget({required String title, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: FontsPath.almaraiRegular,
            fontSize: 10.sp,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontFamily: FontsPath.almaraiBold,
            fontSize: 11.sp,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
