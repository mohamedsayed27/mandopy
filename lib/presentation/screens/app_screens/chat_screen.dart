import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/chat_widget/build_another_message_item.dart';
import '../../widgets/chat_widget/builde_my_message_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35.h,
              width: 35.w,
              padding: EdgeInsets.all(3.r),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.h),
                        blurRadius: 6.r)
                  ]),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      ImagesPath.carousel1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 7.r,
                      child: CircleAvatar(
                        backgroundColor: const Color(0xff00B5AA),
                        radius: 5.r,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Alex',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff000000),
                fontFamily: FontsPath.almaraiBold,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
        actions: [
          SizedBox(width: 50.w,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return index % 2 == 0
                    ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: const MyMessageItem(
                      message: 'Hey, nice to meet you Alex',
                      time: '12:15 PM',
                      imagePath: ImagesPath.carousel1),
                )
                    : Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: const AnotherMessageItem(
                      message:
                      'Hey Jenna!! I see were both at Burning Man! huge fans  ',
                      time: '12:15 PM',
                      imagePath: ImagesPath.carousel1),
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  SvgPath.bxsCoupon,
                  width: 29.14.w,
                  height: 29.14.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 16.5.h, horizontal: 10.w),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23.r),
                          borderSide: const BorderSide(
                            color: Color(0xff9A9EA4),
                          )),
                      hintText: 'Send Message...',
                      hintStyle: TextStyle(
                          color: const Color(0xff7C8085),
                          fontSize: 13.sp,
                          fontFamily: FontsPath.almaraiBold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset(
                  SvgPath.phone,
                  width: 36.51.w,
                  height: 28.61.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
