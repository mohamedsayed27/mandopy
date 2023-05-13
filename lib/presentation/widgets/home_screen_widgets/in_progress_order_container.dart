import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mandopy/core/assets_path/svg_path.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';
import 'outlined_orders_container.dart';

class InProgressOrderContainer extends StatelessWidget {
  const InProgressOrderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedOrdersContainer(
      height: 200.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset(
                ImagesPath.deliveryBike2,
                height: 74.67.h,
                width: 80.3.w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '#254933121',
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiLight,
                        fontSize: 12.sp,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      'محتاج أوراق من المكتبة',
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiBold,
                        fontSize: 14.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      'المسافة الى 2 كم موقع الاستلام',
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiRegular,
                        fontSize: 11.sp,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 50.w,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    SvgPath.time,
                    width: 10.89.w,
                    height: 10.89.h,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'التوصيل خلال نصف ساعه',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 10.sp,
                      color: AppColors.blackTextColor.withOpacity(0.30),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    SvgPath.coins,
                    width: 9.57.w,
                    height: 9.57.h,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'سعر التوصيل',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 10.sp,
                      color: AppColors.blackTextColor.withOpacity(0.30),
                    ),
                  ),
                  Text(
                    '50 ج',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 12.sp,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20.h,
                width: 105.w,
                decoration: BoxDecoration(
                  color: const Color(0xff27D282),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    'المندوب متوجه للاستلام',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 8.sp,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20.h,
                width: 58.w,
                decoration: BoxDecoration(
                  color: const Color(0xffFF305A),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    'تنبيه',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiRegular,
                      fontSize: 8.sp,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
