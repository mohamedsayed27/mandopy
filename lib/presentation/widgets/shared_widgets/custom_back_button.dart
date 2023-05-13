import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? foregroundColor;
  const CustomBackButton({Key? key, this.backgroundColor, this.foregroundColor, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 30.w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor
        ),
        child:  Center(
          child: Icon(
            Icons.arrow_back,
            color: iconColor??Colors.white,
          ),
        ),
      ),
    );
  }
}
