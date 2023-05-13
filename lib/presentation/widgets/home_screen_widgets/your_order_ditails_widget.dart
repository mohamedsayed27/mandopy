import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/constants/app_strings.dart';

import '../shared_widgets/custom_container.dart';
import '../shared_widgets/custom_text_field.dart';

class YourOrderDetails extends StatelessWidget {
  const YourOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 100.h,
      horizontalPadding: 25.w,
      verticalPadding: 0,
      child: const Center(
        child: CustomTextFormField(hintText: AppStrings.orderDetails),
      ),
    );
  }
}
