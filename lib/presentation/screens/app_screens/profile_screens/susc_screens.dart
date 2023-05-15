import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../widgets/profile_widgets/subescribtions_widget.dart';
import '../../../widgets/shared_widgets/custom_back_button.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 130.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.r),
                    bottomRight: Radius.circular(25.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomBackButton(
                      foregroundColor: AppColors.primaryColor,
                      backgroundColor: Colors.white,
                      iconColor: AppColors.primaryColor,
                    ),
                    Text(
                      'الاشتراكات',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: FontsPath.almaraiBold,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 30.w,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: const SubscriptionWidget(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
