import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../shared_widgets/custom_container.dart';
import '../shared_widgets/custom_text_field.dart';

class AddCouponWidget extends StatelessWidget {
  const AddCouponWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 60.h,
      horizontalPadding: 20.w,
      verticalPadding: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 11.h),
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColors.primaryColor,
              child:  Center(child: Icon(Icons.add,color: Colors.white,size: 15.r,),),
            ),
          ),
          SizedBox(width: 10.w,),
          const Expanded(child: CustomTextFormField(hintText: AppStrings.addCouponHint))
        ],
      ),
    );
  }
}
