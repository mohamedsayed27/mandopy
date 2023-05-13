import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/core/assets_path/fonts_path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/images_path.dart';
import '../../widgets/intro_screens_widget/onboarding_class.dart';
import '../../widgets/shared_widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageViewController = PageController();
  bool isLast = false;
  List<OnboardingModel> boarding = [
    OnboardingModel(
        backGround: ImagesPath.onboarding1,
        title: 'All easy with us',
        bodyTitle:
            'Consectetur adipiscing elit. Tempus maecenas tristique cursus tempor vitae tincidunt ut. Tellus et luctus tristique non aliquet.'),
    OnboardingModel(
        backGround: ImagesPath.onboarding2,
        title: 'Happiness delivered',
        bodyTitle:
            'Cursus tempor vitae tincidunt ut. Tellus et luctus tristique non aliquet.'),
    OnboardingModel(
        backGround: ImagesPath.onboarding3,
        title: 'We sell happiness',
        bodyTitle:
            'Tempus maecenas tristique cursus tempor vitae tincidunt ut. Tellus et luctus tristique non aliquet.')
  ];

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: PageView.builder(
                  onPageChanged: (value){
                    if(value == 2){
                      isLast = true;
                    }else{
                      isLast = false;
                    }
                  },
                  controller: pageViewController,
                  itemCount: boarding.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          boarding[index].backGround,
                          height: 340.h,
                          width: double.infinity,
                        ),
                        Text(
                          boarding[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.blackTextColor,
                            fontFamily: FontsPath.productSansBold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          boarding[index].bodyTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.blackTextColor.withOpacity(0.6),
                            height: 1.6.h,
                            fontFamily: FontsPath.productSansRegular,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            SmoothPageIndicator(
              controller: pageViewController,
              count: boarding.length,
              effect: ExpandingDotsEffect(
                dotHeight: 11.h,
                dotWidth: 9.w,
                expansionFactor: 1.2,
                spacing: 5.w,
                activeDotColor: AppColors.primaryColor,
                dotColor: AppColors.primaryColor.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomElevatedButton(
                height: 56.h,
                buttonTitle: 'التالي',
                isTapped: () {
                  if(isLast){
                    Navigator.pushNamedAndRemoveUntil(context, ScreenName.chooseLoginTypeScreen, (route) => false);
                  }
                  pageViewController.nextPage(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeIn,
                  );
                },
                width: double.infinity),
            SizedBox(
              height: 37.h,
            ),
          ],
        ),
      ),
    );
  }
}
