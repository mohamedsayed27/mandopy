import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/constants/app_strings.dart';
import '../../widgets/auth_widgets/auth_field_component.dart';
import '../../widgets/auth_widgets/email_text_form_field.dart';
import '../../widgets/auth_widgets/password_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        surfaceTintColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          children: [
            SizedBox(
              height: 100.h,
            ),
            Text(
              AppStrings.welcomeBack,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppColors.blackTextColor,
                fontFamily: FontsPath.monropeExtraLight,
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AuthFieldComponent(
              title: AppStrings.email,
              child: EmailTextFormField(
                controller: emailController,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            AuthFieldComponent(
              title: AppStrings.password,
              child: PasswordTextFormField(
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomElevatedButton(
              buttonTitle: AppStrings.login,
              isTapped: () {
                Navigator.pushNamedAndRemoveUntil(context, ScreenName.mainLayoutScreen,(route)=>false);
              },
              width: double.infinity,
              height: 56.h,
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
