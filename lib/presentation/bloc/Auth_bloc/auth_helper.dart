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

  navToForgetPasswordScreen(BuildContext context) {

  }

  navBack(BuildContext context)=> Navigator.of(context).pop();

  loginFun(BuildContext context, var model,GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      ///TODO: call login fun here
    }
  }

  registerFun(BuildContext context, var model,GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      ///TODO: call register fun here
    }
  }
}
