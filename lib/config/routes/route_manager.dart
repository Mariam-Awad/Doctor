import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/presentation/screens/choose_date_screen.dart';
import 'package:doctor/presentation/screens/define_problem_screen.dart';
import 'package:doctor/presentation/screens/forget_password_screen.dart';
import 'package:doctor/presentation/screens/main_screen.dart';
import 'package:doctor/presentation/screens/my_visits_screen.dart';
import 'package:doctor/presentation/screens/old_screen.dart';
import 'package:doctor/presentation/screens/otp_screen.dart';
import 'package:doctor/presentation/screens/splash_screen.dart';
import 'package:doctor/presentation/screens/verify_identity_screen.dart';
import 'package:doctor/presentation/screens/weight_screen.dart';
import 'package:flutter/material.dart';
import '../../presentation/screens/blood_screen.dart';
import '../../presentation/screens/branch_screen.dart';
import '../../presentation/screens/define_problem_screen_two.dart';
import '../../presentation/screens/height_screen.dart';
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
      case AppRoutes.defineProblemRouteName:
        return MaterialPageRoute(
          builder: (context) => const DefineProblemScreen(),
        );
      case AppRoutes.defineProblemTwoRouteName:
        return MaterialPageRoute(
          builder: (context) => const DefineProblemScreenTwo(),
        );
      case AppRoutes.oldRouteName:
        return MaterialPageRoute(
          builder: (context) => const OldScreen(),
        );
      case AppRoutes.weightRouteName:
        return MaterialPageRoute(
          builder: (context) => const WeightScreen(),
        );
      case AppRoutes.heightRouteName:
        return MaterialPageRoute(
          builder: (context) => const HeightScreen(),
        );
      case AppRoutes.bloodRouteName:
        return MaterialPageRoute(
          builder: (context) => const BloodScreen(),
        );
      case AppRoutes.branchRouteName:
        return MaterialPageRoute(
          builder: (context) => const BranchScreen(),
        );
      case AppRoutes.chooseDateRouteName:
        return MaterialPageRoute(
          builder: (context) => const ChooseDateScreen(),
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
