import 'package:flutter/material.dart';

import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';

class AuthScreenHelper {
  static AuthScreenHelper? _authScreenHelper;
  AuthScreenHelper._internal();
  static AuthScreenHelper instance() {
    if (_authScreenHelper == null) {
      return _authScreenHelper = AuthScreenHelper._internal();
    }
    return _authScreenHelper!;
  }

  loginFun(BuildContext context, var model, GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      ///TODO: call login fun here
      AppNavigationManager.navPush(
        screen: AppRoutes.mainRouteName,
        context: context,
      );
    }
  }

  registerFun(BuildContext context, var model, GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      ///TODO: call register fun here
    }
  }
}
