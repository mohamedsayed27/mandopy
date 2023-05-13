import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';
import 'package:mandopy/core/assets_path/images_path.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../widgets/home_screen_widgets/order_location_description_widget.dart';
import '../../../widgets/shared_widgets/custom_header_container.dart';

class ComingOrdersScreen extends StatelessWidget {
  const ComingOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.greyBackgroundColor,
          body: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CustomHeaderContainer(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.comingOrders,
                        style: TextStyle(
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 18.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 104.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              color: AppColors.selectedNavBarColorItem,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                AppStrings.waitForAcceptingOrder,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontFamily: FontsPath.almaraiRegular,
                                  fontSize: 8.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 20.h,
                            width: 1.2.w,
                            color: const Color(0xff707070),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '#254933121',
                            style: TextStyle(
                              fontFamily: FontsPath.almaraiLight,
                              fontSize: 12.sp,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.more_vert_rounded,
                    size: 30.r,
                    weight: 25.r,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    AppStrings.allOffers,
                    style: TextStyle(
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 18.sp,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  children: [
                    Container(
                      height: 500.h,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(15.r),
                        border:
                            Border.all(color: AppColors.whiteColor, width: 2.w),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1.h),
                              blurRadius: 4.r,
                              color: Colors.black.withOpacity(0.16))
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 22.h,
                          ),
                          const OrderLocationDescription(),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.shipmentClassification,
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiBold,
                                  fontSize: 12.sp,
                                  color: AppColors.blackTextColor,
                                ),
                              ),
                              SizedBox(
                                width: 60.w,
                              ),
                              Text(
                                AppStrings.shipmentClassification,
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiBold,
                                  fontSize: 12.sp,
                                  color: AppColors.blackTextColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 38.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.chooseShipmentClassification,
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiRegular,
                                  fontSize: 12.sp,
                                  color: AppColors.greyTextColor,
                                ),
                              ),
                              SizedBox(
                                width: 60.w,
                              ),
                              Text(
                                AppStrings.chooseShipmentClassification,
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiRegular,
                                  fontSize: 12.sp,
                                  color: AppColors.greyTextColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 54.h,
                                width: 54.w,
                                clipBehavior: Clip.antiAlias,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  ImagesPath.carousel1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                'محمد احمد',
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiRegular,
                                  fontSize: 12.sp,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(
                                width: 56.w,
                              ),
                              RatingBar.builder(
                                itemSize: 25.r,
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
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 40.h,
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'اكبت سعر التوصيل',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2.r),
                                  borderSide: BorderSide(
                                    color: AppColors.primaryColor,
                                    width: 1.5.w,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2.r),
                                  borderSide: BorderSide(
                                    color: AppColors.primaryColor,
                                    width: 1.5.w,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2.r),
                                  borderSide: BorderSide(
                                    color: AppColors.primaryColor,
                                    width: 1.5.w,
                                  ),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20.w),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Center(
                            child: CustomElevatedButton(
                              buttonTitle: 'إرسال العرض',
                              isTapped: () {},
                              width: 123.w,
                              fontSize: 13,
                              height: 35.h,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
