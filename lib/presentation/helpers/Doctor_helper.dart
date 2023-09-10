import 'package:doctor/data/models/app_theme_model.dart';
import 'package:doctor/domain/entities/doctor_entity.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorHelper {
  static DoctorHelper? _doctorHelper;
  DoctorHelper._internal();
  static DoctorHelper instance() {
    if (_doctorHelper == null) {
      return _doctorHelper = DoctorHelper._internal();
    }
    return _doctorHelper!;
  }

  DoctorEntity? doctorModel;
  AppThemeModel? appThemeModel;

  getDoctorModelFun(BuildContext context, var doctorId) =>
      context.read<DoctorBloc>().add(GetDoctorModelEvent(doctorId: doctorId));

  setAppTheme() {
    appThemeModel =
        AppThemeModel.detectAppTheme(doctorModel!.records!.doctor!.id!);
  }
}
