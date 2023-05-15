import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';
import 'package:mandopy/core/assets_path/images_path.dart';
import 'package:mandopy/core/assets_path/svg_path.dart';
import 'package:mandopy/presentation/screens/app_screens/profile_screen.dart';

import 'messages_screen.dart';
import 'home_screen.dart';
import 'my_work_screen.dart';
import 'orders_screen/comming_orders_screen.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({Key? key}) : super(key: key);

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  List<Widget> screens = const [
    HomeScreen(),
    ComingOrdersScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30.r,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            if(currentIndex!=value){
              setState(() {
                currentIndex=value;
              });
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgPath.home,
                  width: 29.38.w,
                  height: 30.65.h,
                  colorFilter: ColorFilter.mode(
                      currentIndex == 0
                          ? AppColors.selectedNavBarColorItem
                          : AppColors.primaryColor,
                      BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgPath.work,
                  width: 25.54.w,
                  height: 26.48.h,
                  colorFilter: ColorFilter.mode(
                      currentIndex == 1
                          ? AppColors.selectedNavBarColorItem
                          : AppColors.primaryColor,
                      BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgPath.chat,
                  width: 27.05.w,
                  height: 27.05.h,
                  colorFilter: ColorFilter.mode(
                      currentIndex == 2
                          ? AppColors.selectedNavBarColorItem
                          : AppColors.primaryColor,
                      BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgPath.profile,
                  width: 19.66.w,
                  height: 27.66.h,
                  colorFilter: ColorFilter.mode(
                      currentIndex == 3
                          ? AppColors.selectedNavBarColorItem
                          : AppColors.primaryColor,
                      BlendMode.srcIn),
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
