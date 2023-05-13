import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors{
  static const blackTextColor = Color(0xff020003);
  static const primaryColor = Color(0xff0E60BE);
  static const whiteColor = Color(0xffFFFFFF);
  static const authTextFieldFillColor =  Color(0xffDEDEDE);
  static const selectedNavBarColorItem =  Color(0xffFF9100);
  static const authPurpleTextColor =  Color(0xff5B57BA);
  static const greyBackgroundColor =  Color(0xffF0F0F0);
  static const greyTextColor =  Color(0xffDED9D9);
  static MaterialColor createMaterialColor(Color color) {
    List<double> strengths = [.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

   static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: createMaterialColor(primaryColor),
       visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shadowColor: Colors.black.withOpacity(0.1),
        foregroundColor: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),

        ),
        padding: EdgeInsets.zero
      ),
    ),
     outlinedButtonTheme: OutlinedButtonThemeData(
       style: OutlinedButton.styleFrom(
         backgroundColor: whiteColor,
         side: const BorderSide(
           color: primaryColor,
         ),
         shadowColor: Colors.black.withOpacity(0.1),
         foregroundColor: primaryColor,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.r),
         ),
           padding: EdgeInsets.zero
       ),
     ),

  );
}