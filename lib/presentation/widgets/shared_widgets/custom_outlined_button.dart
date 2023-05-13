import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonTitle;
  final Function isTapped;
  final double? height;
  final double? fontSize;
  final double width;
  final Color textColor;

  const CustomOutlinedButton({
    Key? key,
    required this.buttonTitle,
    required this.isTapped,
    required this.width,
    this.height,
    this.textColor = Colors.white,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: () {
          isTapped();
        },
        child: Center(
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontFamily: FontsPath.tajawalRegular,
              fontSize: fontSize?.sp ?? 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
