import 'package:flutter/material.dart';
import 'package:ssdm/modules/dashboard/screens/dashboard_screen.dart';
import 'package:ssdm/modules/splash/screens/splash_screen.dart';

class NavigatorSystem {
  static routesSystem(RouteSettings settings) {
    if (settings.name?.compareTo('/') == 0) {
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(
          title: "Splash Screen",
        ),
      );
    } else if (settings.name?.compareTo('/dashboard') == 0) {
      return MaterialPageRoute(
        builder: (context) => DashboardScreen(
            "Dashboard", settings.arguments as Map<String, String>),
      );
    }
    return null;
  }
}
