import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_back_button.dart';

import '../../../../core/app_theme/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../widgets/home_screen_widgets/finished_orders_container.dart';
import '../../../widgets/home_screen_widgets/in_progress_order_container.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Column(
            children: [
              SizedBox(
                height: 90.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomBackButton(
                        backgroundColor: AppColors.whiteColor,
                        foregroundColor: AppColors.primaryColor,
                        iconColor: AppColors.primaryColor,
                      ),
                      Text(
                        AppStrings.yourOrders,
                        style: TextStyle(
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 18.sp,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                        width: 30.w,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.r),
                      topLeft: Radius.circular(24.r),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        AppStrings.inProgressOrders,
                        style: TextStyle(
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 16.sp,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      const InProgressOrderContainer(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        AppStrings.inProgressOrders,
                        style: TextStyle(
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 16.sp,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      const FinishedOrdersContainer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
