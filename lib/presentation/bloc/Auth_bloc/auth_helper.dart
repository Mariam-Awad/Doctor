import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/config/routes/route_manager.dart';
import 'package:flutter/material.dart';

class AuthHelper {
  static AuthHelper? _authHelper;
  AuthHelper._internal();
  static AuthHelper instance() {
    if (_authHelper == null) {
      return _authHelper = AuthHelper._internal();
    }
    return _authHelper!;
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  navToForgetPasswordScreen(BuildContext context) {
    Navigator.of(context).push(
      AppRouteManger.generateRoute(
        const RouteSettings(
          name: AppRoutes.forgetPasswordRouteName,
        ),
      ),
    );
  }

  navBack(BuildContext context)=> Navigator.of(context).pop();

  loginFun(BuildContext context, var model) {
    if (formKey.currentState!.validate()) {
      ///TODO: call login fun here
    }
  }

  registerFun(BuildContext context, var model) {
    if (formKey.currentState!.validate()) {
      ///TODO: call register fun here
    }
  }
}
