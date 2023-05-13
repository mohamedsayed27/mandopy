import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../widgets/home_screen_widgets/order_details_widget.dart';
import '../../../widgets/shared_widgets/custom_header_container.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.greyBackgroundColor,
          body: Column(
            children: [

              CustomHeaderContainer(
                child: Text(
                  AppStrings.finishPay,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontsPath.almaraiBold,
                    fontSize: 18.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h,),
                    Text(
                      "طلبك",
                      style: TextStyle(
                        fontFamily: FontsPath.almaraiBold,
                        fontSize:14.sp,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    const OrderDetailsWidget(),
                    SizedBox(height: 90.h,),
                    priceShipping(title: "Shipping Fee", price: "10 \$"),
                    SizedBox(height: 5.h,),
                    priceShipping(title: "Assurance", price: "10 \$"),
                    SizedBox(height: 5.h,),
                    priceShipping(title: "Total", price: "20 \$",isTotal: true),
                    SizedBox(height: 80.h,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE51515),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 25.w)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "01000000000",
                            style: TextStyle(
                              fontFamily: FontsPath.monropeRegular,
                              fontSize: 37.sp,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          Icon(
                            Icons.camera_alt,
                            size: 34.r,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget priceShipping(
      {required String title, required String price, bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          price,
          style: TextStyle(
            fontFamily:
                isTotal ? FontsPath.monropeBold : FontsPath.monropeRegular,
            fontSize: isTotal ? 16.sp : 14.sp,
            color: AppColors.blackTextColor,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily:
                isTotal ? FontsPath.monropeBold : FontsPath.monropeRegular,
            fontSize: isTotal ? 16.sp : 14.sp,
            color: AppColors.blackTextColor,
          ),
        ),
      ],
    );
  }
}
