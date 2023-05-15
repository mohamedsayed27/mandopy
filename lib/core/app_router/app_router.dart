
import 'package:flutter/material.dart';
import 'package:mandopy/core/app_router/screens_name.dart';
import 'package:mandopy/presentation/screens/app_screens/messages_screen.dart';
import 'package:mandopy/presentation/screens/auth_screens/login_screen.dart';
import 'package:mandopy/presentation/screens/intro_screens/onboarding_screen.dart';
import 'package:mandopy/presentation/screens/intro_screens/splash_screen.dart';

import '../../presentation/screens/app_screens/chat_screen.dart';
import '../../presentation/screens/app_screens/main_layout_screen.dart';
import '../../presentation/screens/app_screens/orders_screen/comming_orders_screen.dart';
import '../../presentation/screens/app_screens/orders_screen/request_order_screen.dart';
import '../../presentation/screens/auth_screens/choose_login_type.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const SplashScreen(); });
        case ScreenName.onboardingScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const OnboardingScreen(); });
        case ScreenName.chooseLoginTypeScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const ChooseLoginType(); });
        case ScreenName.mainLayoutScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const MainLayoutScreen(); });
        case ScreenName.loginScreen:
          return SlideRightRoute(page: const LoginScreen());
        case ScreenName.requestOrderScreen:
          return SlideRightRoute(page: const RequestOrderScreen());
        case ScreenName.comingOrdersScreen:
          return SlideRightRoute(page: const ComingOrdersScreen());
        case ScreenName.chatScreen:
          return SlideRightRoute(page: const ChatScreen());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('خطأ'),
        ),
        body: const Center(
          child: Text('نعتذر حدث خطأ , الرجاء اعادة المحاولة'),
        ),
      );
    });
  }

}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) {
      return page;
    },
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 190),
    reverseTransitionDuration: const Duration(milliseconds: 190),
  );
}