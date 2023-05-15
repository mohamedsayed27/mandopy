import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/app_router/app_router.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/presentation/screens/app_screens/messages_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/orders_screen/comming_orders_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/orders_screen/order_status_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/orders_screen/pay_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/orders_screen/request_order_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/orders_screen/your_orders.dart';
import 'package:mandopy/presentation/screens/app_screens/profile_screen.dart';
import 'package:mandopy/presentation/screens/app_screens/profile_screens/susc_screens.dart';

import 'core/app_theme/app_colors.dart';
import 'core/services/services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await CacheHelper.init();
  // await DioHelper.init();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Mandoby',
          theme: AppColors.lightTheme,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: ScreenName.splashScreen,
          // home: const ChatScreen(),
        );
      },
    );
  }
}
