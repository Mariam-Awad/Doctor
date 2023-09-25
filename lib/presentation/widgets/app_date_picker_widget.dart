import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_colors_util.dart';
import '../../core/utils/app_styles_util.dart';

Future<DateTime?> customShowDatePicker(BuildContext context) async =>
    await showDatePickerDialog(
      context: context,
      initialDate: DateTime.now(),
      minDate: DateTime(1980),
      maxDate: DateTime(2030),
      contentPadding: const EdgeInsets.all(6.0),
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 120.h),
      daysNameTextStyle: AppStylesUtil.textRegularStyle(
          14.0, AppColorUtil.visaDarkBlack, FontWeight.w400),
      leadingDateTextStyle: AppStylesUtil.textBoldStyle(
          20.0, AppColorUtil.textDarkGreen, FontWeight.bold),
      enabledCellTextStyle: AppStylesUtil.textRegularStyle(
          16.0, AppColorUtil.visaDarkBlack, FontWeight.w400),
      selectedCellTextStyle: AppStylesUtil.textBoldStyle(
          16.0, AppColorUtil.white, FontWeight.w400),
      currentDateTextStyle: AppStylesUtil.textRegularStyle(
          16.0, AppColorUtil.textDarkGreen, FontWeight.w500),
      slidersColor: AppColorUtil.textDarkGreen,
      barrierColor: Colors.transparent,
      splashRadius: 8.r,
    );
