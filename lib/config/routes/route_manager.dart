import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/presentation/screens/forget_password_screen.dart';
import 'package:doctor/presentation/screens/main_screen.dart';
import 'package:doctor/presentation/screens/my_visits_screen.dart';
import 'package:doctor/presentation/screens/otp_screen.dart';
import 'package:doctor/presentation/screens/splash_screen.dart';
import 'package:doctor/presentation/screens/verify_identity_screen.dart';
import 'package:flutter/material.dart';
import '../../presentation/screens/login_screen.dart';

class AppRouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreenRouteName:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.loginScreenRouteName:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case AppRoutes.forgetPasswordRouteName:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );
      case AppRoutes.otpRouteName:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
      case AppRoutes.mainRouteName:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case AppRoutes.myVisitsName:
        return MaterialPageRoute(
          builder: (context) => const MyVisitsScreen(),
        );
      case AppRoutes.verifyIdentityRouteName:
        return MaterialPageRoute(
          builder: (context) => const VerifyIdentityScreen(),
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
