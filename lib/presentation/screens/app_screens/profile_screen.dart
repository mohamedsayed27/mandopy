import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/core/assets_path/images_path.dart';
import 'package:mandopy/core/assets_path/svg_path.dart';
import 'package:mandopy/core/constants/app_strings.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Container(
                height: 260.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff0E60BE), Color(0xff0499EB)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25.w,
                          width: 8.w,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert_rounded,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          AppStrings.profile,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontsPath.almaraiBold,
                            fontSize: 18.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 25.w,
                          width: 8.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Container(
                        height: 96.h,
                        width: 96.w,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          ImagesPath.carousel2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Kitani Sarapova',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontsPath.monropeExtraLight,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'sarapova.kitani@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontsPath.monropeExtraLight,
                        fontSize: 14.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 240.h,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 20.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24.r),
                          topLeft: Radius.circular(24.r),
                        ),
                      ),
                      child: ListView(
                        children: [
                          buildProfileDataItem(
                            svgPath: SvgPath.settings,
                            title: "اعدادت الحساب",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.lock,
                            title: "تغيير كلمة السر",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.couponCodes,
                            title: "اكواد الخصم",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.like,
                            title: "الأسئلة الشائعة",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.phoneProfile,
                            title: "تواصل معنا",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.motorcycle,
                            title: "رحلاتك",
                            onTap: () {},
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.coins,
                            title: "الدفع",
                            onTap: () {},
                            color: AppColors.primaryColor,
                          ),
                          const Divider(),
                          buildProfileDataItem(
                            svgPath: SvgPath.bxsCoupon,
                            title: "الإشتراكات",
                            onTap: () {
                              Navigator.pushNamed(context, ScreenName.subscriptionScreen);
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileDataItem(
      {required String svgPath,
      required String title,
      required void Function() onTap,
      Color? color}) {
    return ListTile(
      leading: SvgPicture.asset(
        svgPath,
        width: 23.w,
        height: 23.h,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: FontsPath.tajawalBold,
            color: Colors.black,
            fontSize: 16.sp),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: const Color(0xff464646),
        size: 20.r,
      ),
      onTap: onTap,
    );
  }
}
