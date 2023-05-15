import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';
import 'package:mandopy/core/assets_path/images_path.dart';

class SubscriptionWidget extends StatelessWidget {
  const SubscriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: const Color(0xffDCECFF),
          borderRadius: BorderRadius.circular(13.r),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1.h),
                blurRadius: 3.r,
                color: Colors.black.withOpacity(0.22))
          ]),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اشتراك نصف سنوى',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsPath.almaraiRegular,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'الأقسام المتاحة',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsPath.almaraiRegular,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'مدة الإشتراك',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontsPath.almaraiRegular,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '50 LE',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontsPath.almaraiBold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                  width: 124.w,
                  height: 27.h,
                  child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.r))
                  ), child: const Text('اشتراك'),),
                )
              ],
            ),
          ),
          Image.asset(
            ImagesPath.subsImage,
            width: 134.w,
            height: 129.h,
          ),
        ],
      ),
    );
  }
}
