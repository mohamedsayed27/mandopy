import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';

class ChatItem extends StatelessWidget {
  final String imagePath;
  const ChatItem({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Container(
            height: 75.h,
            width: 75.w,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 5.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'احمد محمد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff434B56),
                    fontFamily: FontsPath.almaraiBold,
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Hey, nice shoes where are...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff434B56),
                    fontFamily: FontsPath.almaraiBold,
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 3.h,
          ),
          Text(
            '7s ago',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff787C81),
              fontFamily: FontsPath.almaraiBold,
              fontSize: 13.sp,
            ),
          ),

        ],
      ),
    );
  }
}
