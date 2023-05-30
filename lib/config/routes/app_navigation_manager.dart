import 'package:doctor/config/routes/route_manager.dart';
import 'package:flutter/cupertino.dart';

class AppNavigationManager {
  static navPush({String? screen, var argument, BuildContext? context}) {
    Navigator.of(context!).push(
      AppRouteManager.generateRoute(
        RouteSettings(
          name: screen,
          arguments: argument,
        ),
      ),
    );
  }

  static navPushReplacement({String? screen, var argument, BuildContext? context}) {
    Navigator.of(context!).pushReplacement(
      AppRouteManager.generateRoute(
        RouteSettings(
          name: screen,
          arguments: argument,
        ),
      ),
    );
  }

  static navPushAnRemoveUntil({
      String? screen, var argument, BuildContext? context}) {
    Navigator.of(context!).pushAndRemoveUntil(
      AppRouteManager.generateRoute(
        RouteSettings(
          name: screen,
          arguments: argument,
        ),
      ),
      (route) => false,
    );
  }

  static navPop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static navPushAndPop(BuildContext context, String screen) {
    Navigator.of(context).popAndPushNamed(screen);
  }
}
