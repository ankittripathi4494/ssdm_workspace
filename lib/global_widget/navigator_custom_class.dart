import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssdm/modules/dashboard/screens/dashboard_screen.dart';
import 'package:ssdm/modules/login/screens/login_screen.dart';
import 'package:ssdm/modules/notifications/screens/notification_screen.dart';
import 'package:ssdm/modules/pagenotfound/screens/page_not_found_screen.dart';
import 'package:ssdm/modules/splash/screens/splash_screen.dart';

class NavigatorSystem {
  static Route routesSystem(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return PageTransition(
          duration: Duration.zero,
          type: PageTransitionType.fade,
          child: const SplashScreen(
            title: '',
          ),
        );
      case '/login':
        return PageTransition(
          duration: Duration.zero,
          type: PageTransitionType.fade,
          child: const LoginScreen(),
        );
      case '/dashboard':
        if (arguments is Map<String, String>) {
          return PageTransition(
            duration: Duration.zero,
            type: PageTransitionType.fade,
            child: DashboardScreen("Dashboard Screen", arguments),
          );
        }
        return errorRoute();
      case '/notification':
        return PageTransition(
          duration: Duration.zero,
          type: PageTransitionType.fade,
          child: const NotificationScreen(
            title: '',
          ),
        );
      default:
        return errorRoute();
    }
  }

  static errorRoute() {
    return PageTransition(
          duration: Duration.zero,
          type: PageTransitionType.fade,
          child: const PageErrorScreen(
            title: '',
          ),
        );
  }
}
