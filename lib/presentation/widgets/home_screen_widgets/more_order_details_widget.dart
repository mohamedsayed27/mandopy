import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/constants/app_strings.dart';
import '../shared_widgets/custom_container.dart';

class MoreOrderDetailsWidget extends StatelessWidget {
  const MoreOrderDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 127.h,
      horizontalPadding: 20.w,
      verticalPadding: 0,
      child: TextField(
        expands: true,
        maxLines: null,
        minLines: null,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: AppStrings.addAnotherDetails,
            hintStyle: TextStyle(
                color: Colors.grey,
                fontFamily: FontsPath.monropeExtraLight,
                fontSize: 12.sp
            ),
            suffix: const Icon(Icons.camera_alt,color: AppColors.primaryColor,)
        ),
      ),
    );
  }
}
