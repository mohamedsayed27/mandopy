import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_button.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/logo_container.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/constants/app_strings.dart';
import '../../widgets/auth_widgets/auth_text_button.dart';
import '../../widgets/shared_widgets/custom_outlined_button.dart';

class ChooseLoginType extends StatelessWidget {
  const ChooseLoginType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LogoContainer(),
              SizedBox(
                height: 80.h,
              ),
              Text(
                AppStrings.chooseLoginIntroText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackTextColor,
                  height: 1.3.h,
                  fontFamily: FontsPath.monropeRegular,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 66.h,
              ),
              CustomElevatedButton(
                buttonTitle: AppStrings.continueWithEmail,
                isTapped: () {
                  Navigator.pushNamed(context, ScreenName.loginScreen);
                },
                width: double.infinity,
                height: 56.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomOutlinedButton(
                buttonTitle: AppStrings.continueWithPhoneNumber,
                isTapped: () {},
                width: double.infinity,
                height: 56.h,
                textColor: AppColors.primaryColor,
              ),
              SizedBox(
                height: 15.h,
              ),
              AuthTextButton(
                firstTitle: AppStrings.doNotHaveAccount,
                secondTitle: AppStrings.register,
                onPressed: () {},
              ),
              SizedBox(
                height: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
