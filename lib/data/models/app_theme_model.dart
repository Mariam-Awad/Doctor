import 'package:doctor/core/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class AppThemeModel {
  final Color? appColor;
  final int? themeId;
  const AppThemeModel({required this.themeId, required this.appColor});

// local app themes
  static final List<AppThemeModel> _appThemes = [
    AppThemeModel(
      themeId: 1,
      appColor: ColorExtension.fromHex("hexString"),
    ),
  ];

// this method to detect app theme depend on theme that comming from database
  AppThemeModel detectAppTheme(int appThemeId) {
    AppThemeModel? appThemeModel;
    for (AppThemeModel theme in _appThemes) {
      if (theme.themeId == appThemeId) {
        appThemeModel = theme;
        break;
      }
    }
    return appThemeModel!;
  }
}
