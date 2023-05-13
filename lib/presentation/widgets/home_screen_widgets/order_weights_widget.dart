import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';
import 'package:mandopy/core/assets_path/images_path.dart';

import '../shared_widgets/custom_container.dart';

class OrderWrightsWidget extends StatelessWidget {
  final int index;
  final void Function()? onTap1;
  final void Function()? onTap2;
  final void Function()? onTap3;
  const OrderWrightsWidget({Key? key, required this.index, this.onTap1, this.onTap2, this.onTap3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: CustomContainer(
            onTap: onTap1,
            height: 120.h,
            width: 100.w,
            horizontalPadding: 0,
            verticalPadding: 0,
            borderColor: index==1?AppColors.primaryColor:null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagesPath.box1kg,height: 50.h,width: 22.w,),
                SizedBox(height: 14.h,),
                Text("< 1 Kg",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontFamily: FontsPath.monropeExtraLight),)
              ],
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: CustomContainer(
            onTap: onTap2,
            height: 120.h,
            width: 100.w,
            horizontalPadding: 0,
            verticalPadding: 0,
            borderColor: index==2?AppColors.primaryColor:null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagesPath.box3kg,height: 47.h,width: 38.w,),
                SizedBox(height: 14.h,),
                Text("3 - 10 Kg",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontFamily: FontsPath.monropeExtraLight),)
              ],
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: CustomContainer(
            onTap: onTap3,
            height: 120.h,
            width: 100.w,
            horizontalPadding: 0,
            verticalPadding: 0,
            borderColor: index==3?AppColors.primaryColor:null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagesPath.box10kg,height: 51.9.h,width: 34.99.w,),
                SizedBox(height: 14.h,),
                Text("< 10 Kg",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontFamily: FontsPath.monropeExtraLight),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
