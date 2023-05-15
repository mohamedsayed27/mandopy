import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';

class AnotherMessageItem extends StatelessWidget {
  final String message;
  final String time;
  final String imagePath;

  const AnotherMessageItem({
    Key? key,
    required this.message,
    required this.time,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 200.w,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
                color: Color(0xff434B56),
                borderRadius: BorderRadius.circular(23.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontFamily: FontsPath.almaraiRegular),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: FontsPath.almaraiRegular),
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    // Icon(Icons.done_all,color: Colors.blue,size: 20.r,),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 5.w,),
          Container(
            height: 65.h,
            width: 65.w,
            padding: EdgeInsets.all(3.r),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      offset: Offset(0, 3.h),
                      blurRadius: 6.r
                  )
                ]
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10.r,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff00B5AA),
                      radius: 7.r,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
