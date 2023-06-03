import 'package:flutter/material.dart';

class AuthScreenHelper {
  static AuthScreenHelper? _authScreenHelper;
  AuthScreenHelper._internal();
  static AuthScreenHelper instance() {
    if (_authScreenHelper == null) {
      return _authScreenHelper = AuthScreenHelper._internal();
    }
    return _authScreenHelper!;
  }

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
