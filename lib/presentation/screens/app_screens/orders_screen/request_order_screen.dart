import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';
import 'package:mandopy/core/constants/app_strings.dart';

import '../../../../core/app_theme/app_colors.dart';
import '../../../widgets/home_screen_widgets/add_coupon_widget.dart';
import '../../../widgets/home_screen_widgets/more_order_details_widget.dart';
import '../../../widgets/home_screen_widgets/order_count.dart';
import '../../../widgets/home_screen_widgets/order_location_description_widget.dart';
import '../../../widgets/home_screen_widgets/order_type.dart';
import '../../../widgets/home_screen_widgets/order_weights_widget.dart';
import '../../../widgets/home_screen_widgets/request_order_screen_background_widget.dart';
import '../../../widgets/home_screen_widgets/your_order_ditails_widget.dart';
import '../../../widgets/shared_widgets/custom_button.dart';
import '../../../widgets/shared_widgets/custom_text.dart';

class RequestOrderScreen extends StatefulWidget {
  const RequestOrderScreen({Key? key}) : super(key: key);

  @override
  State<RequestOrderScreen> createState() => _RequestOrderScreenState();
}

class _RequestOrderScreenState extends State<RequestOrderScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: BackgroundRequestOrderScreenWidget(
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
                    decoration: BoxDecoration(
                      color: AppColors.greyBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                    child: ListView(
                      children: [
                        const CustomText(
                          title: AppStrings.orderTitles,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const OrderLocationDescription(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.enterOrderDetails,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const YourOrderDetails(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.orderWeight,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) sS) {
                            return OrderWrightsWidget(
                              index: currentIndex,
                              onTap1: () {
                                sS((){
                                  currentIndex = 1;
                                });
                              },
                              onTap2: () {
                                sS((){
                                  currentIndex = 2;
                                });
                              },
                              onTap3: () {
                                sS((){
                                  currentIndex = 3;
                                });
                              },
                            );
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.orderType,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const OrderType(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.count,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const OrderCount(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.anotherDetails,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const MoreOrderDetailsWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: AppStrings.addCoupon,
                          fontFamilyPath: FontsPath.almaraiBold,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const AddCouponWidget(),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomElevatedButton(
                          buttonTitle: AppStrings.addOrder,
                          isTapped: () {},
                          width: double.infinity,
                          height: 50.h,
                          fontSize: 14,
                          textColor: AppColors.whiteColor,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
