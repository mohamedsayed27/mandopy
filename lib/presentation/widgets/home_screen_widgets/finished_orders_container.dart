import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';
import 'outlined_orders_container.dart';

class FinishedOrdersContainer extends StatelessWidget {
  const FinishedOrdersContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedOrdersContainer(
      height: 180.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: AppColors.primaryColor,
                    size: 24.r,
                  ),
                  SizedBox(width: 5.w,),
                  Text(
                    'تم التوصيل',
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 14.sp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              Text(
                'منذ يومين',
                style: TextStyle(
                  fontFamily: FontsPath.almaraiRegular,
                  fontSize: 10.sp,
                  color: AppColors.blackTextColor.withOpacity(0.30),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Image.asset(
                ImagesPath.deliveryBike2,
                height: 64.67.h,
                width: 70.3.w,
              ),
              SizedBox(width: 10.w,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'هستلم حاجات من محل ',
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiBold,
                        fontSize: 14.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    RatingBar.builder(
                      itemSize: 22.r,
                      ignoreGestures: true,
                      initialRating: 4,
                      minRating: 1,
                      unratedColor: Colors.grey,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      onRatingUpdate: (double value) {},
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
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'المجموع',
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
              Text(
                '3 كم',
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
    );
  }
}
