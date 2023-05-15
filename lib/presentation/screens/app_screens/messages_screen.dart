import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/images_path.dart';

import '../../../core/app_router/screens_name.dart';
import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/chat_widget/chat_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 130.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.r),
                    bottomRight: Radius.circular(25.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'المحادثات',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontsPath.almaraiBold,
                      fontSize: 24.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ScreenName.chatScreen);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.w),
                        child: const ChatItem(imagePath: ImagesPath.carousel1),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
