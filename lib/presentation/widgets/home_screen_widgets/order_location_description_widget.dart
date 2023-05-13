import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../../core/constants/app_strings.dart';
import '../shared_widgets/custom_container.dart';
import '../shared_widgets/custom_text.dart';
import '../shared_widgets/custom_text_field.dart';

class OrderLocationDescription extends StatelessWidget {
  final bool isEnable;
  const OrderLocationDescription({Key? key, this.isEnable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 150.h,
      horizontalPadding: 25.w,
      verticalPadding: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgPath.fromLocation,
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(
                width: 19.w,
              ),
              const CustomText(
                  title: AppStrings.receiveFrom,
                  fontFamilyPath: FontsPath.almaraiRegular,
                  fontSize: 10),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 25.w,
            ),
            child: CustomTextFormField(
              isEnable: isEnable,
              height: 30,
              hintText: AppStrings.enterReceivePlaceName,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgPath.toLocation,
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(
                width: 19.w,
              ),
              const CustomText(
                  title: AppStrings.deliverTo,
                  fontFamilyPath: FontsPath.almaraiRegular,
                  fontSize: 10),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 25.w,
            ),
            child: CustomTextFormField(
              isEnable: isEnable,
              height: 30,
              hintText: AppStrings.enterDeliveryPlaceName,
            ),
          ),
        ],
      ),
    );
  }
}
