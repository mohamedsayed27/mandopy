import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';


class AuthTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String firstTitle;
  final String secondTitle;
  const AuthTextButton({Key? key, this.onPressed, required this.firstTitle, required this.secondTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: '$firstTitle  ',
          children: [
            TextSpan(
              text: secondTitle,
              style: TextStyle(
                color: AppColors.authPurpleTextColor,
                fontFamily: FontsPath.monropeBold,
                fontSize: 14.sp,
              ),
            )
          ],
          style: TextStyle(
            color: AppColors.blackTextColor,
            fontFamily: FontsPath.monropeRegular,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
