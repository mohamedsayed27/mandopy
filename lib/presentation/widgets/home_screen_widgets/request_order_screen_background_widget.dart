import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/images_path.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/constants/app_strings.dart';
import '../shared_widgets/custom_back_button.dart';

class BackgroundRequestOrderScreenWidget extends StatelessWidget {
  final Widget child;

  const BackgroundRequestOrderScreenWidget({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.orderPriceOffer,
                          style: TextStyle(
                            fontFamily: FontsPath.almaraiBold,
                            fontSize: 26.sp,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Image.asset(
                          ImagesPath.deliveryBikeBackground,
                          height: 150.h,
                          width: 140.w,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 190.h,
                  width: double.infinity,
                  color: AppColors.primaryColor.withOpacity(0.3),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: AppColors.greyBackgroundColor,
              ),
            ),
          ],
        ),
        child,
        Positioned(top: 10.h, right: 20.w, child: const CustomBackButton(),),
      ],
    );
  }

}
