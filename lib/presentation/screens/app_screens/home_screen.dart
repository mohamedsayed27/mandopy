import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';
import 'package:mandopy/core/assets_path/images_path.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../core/constants/app_strings.dart';
import '../../widgets/home_screen_widgets/curosal_slider_widget.dart';
import '../../widgets/home_screen_widgets/custom_home_container.dart';
import '../../widgets/shared_widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          child: ListView(
            children: [
              Text(
                AppStrings.todayOffers,
                style: TextStyle(
                  fontFamily: FontsPath.almaraiBold,
                  fontSize: 16.sp,
                  color: AppColors.blackTextColor,
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              const CarousalSliderWidget(),
              SizedBox(
                height: 16.h,
              ),
              Text(
                AppStrings.whatYouSearchAbout,
                style: TextStyle(
                  fontFamily: FontsPath.almaraiBold,
                  fontSize: 16.sp,
                  color: AppColors.blackTextColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomHomeContainer(
                onTap: () {
                  Navigator.pushNamed(context, ScreenName.requestOrderScreen);
                },
                title: AppStrings.orderPriceOffer,
                imagePath: ImagesPath.boxes,
                imageWidth: 125.84.w,
                imageHeight: 75.95.h,
              ),
              SizedBox(
                height: 29.h,
              ),
              CustomHomeContainer(
                title: AppStrings.trackYourOrder,
                imagePath: ImagesPath.van,
                imageWidth: 112.29.w,
                imageHeight: 95.01.h,
              ),
              SizedBox(
                height: 36.h,
              ),
              CustomElevatedButton(
                buttonTitle: AppStrings.orderAnythingService,
                isTapped: () {},
                width: double.infinity,
                height: 40.h,
                fontSize: 14,
                textColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
