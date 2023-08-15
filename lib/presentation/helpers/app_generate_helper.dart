import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_bloc.dart';
import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppGenerateHelper {
  static AppGenerateHelper? _appGenerateHelper;
  AppGenerateHelper._internal();
  static AppGenerateHelper instance() {
    if (_appGenerateHelper == null) {
      return _appGenerateHelper = AppGenerateHelper._internal();
    }
    return _appGenerateHelper!;
  }

  getAppModelFun(BuildContext context) =>
      context.read<GenerateAppBloc>().add(const GetAppModelEvent());
}
