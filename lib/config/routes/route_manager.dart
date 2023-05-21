import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteManger {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() => MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text(
              "No route found",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      );
}
