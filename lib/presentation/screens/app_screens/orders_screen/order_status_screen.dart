import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';
import 'package:mandopy/core/assets_path/svg_path.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../widgets/home_screen_widgets/order_location_description_widget.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 216.h,
                      width: 216.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 162.h,
                      width: 162.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.done_rounded,
                        size: 50.r,
                        weight: 20.r,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      AppStrings.yourOrderArrived,
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiBold,
                        fontSize: 18.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      AppStrings.yourOrderConfirmedArrivedByDelivery,
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiRegular,
                        fontSize: 12.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 400.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r),
                    )),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'محمد احمد',
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiRegular,
                                  fontSize: 12.sp,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              RatingBar.builder(
                                itemSize: 18.r,
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
                              Text(
                                'تم الوصول لموقع التسليم',
                                style: TextStyle(
                                  fontFamily: FontsPath.almaraiLight,
                                  fontSize: 11.sp,
                                  color: AppColors.blackTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          SvgPath.message,
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SvgPicture.asset(
                          SvgPath.call,
                          width: 40.w,
                          height: 40.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const OrderLocationDescription(
                      isEnable: false,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomElevatedButton(
                      buttonTitle: 'تأكيد الاستلام',
                      isTapped: () {},
                      width: double.infinity,
                      fontSize: 16,
                      height: 50.h,
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
