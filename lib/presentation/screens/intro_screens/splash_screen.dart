import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/screens_name.dart';

import '../../widgets/shared_widgets/logo_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, ScreenName.onboardingScreen, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterRipple(
        duration: const Duration(milliseconds: 950),
        radius: 150.r,
        rippleColor: Colors.grey.withOpacity(0.3),
        child: const LogoContainer(),
      ),
    );
  }
}
