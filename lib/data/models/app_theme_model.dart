import 'package:doctor/core/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class AppThemeModel {
  final Color? appPrimaryColor, appTextColor, appSecondColor;
  final int? themeId;
  const AppThemeModel({
    required this.themeId,
    required this.appPrimaryColor,
    required this.appTextColor,
    required this.appSecondColor,
  });

// local app themes
  static final List<AppThemeModel> _appThemes = [
    AppThemeModel(
      themeId: 1,
      appPrimaryColor: ColorExtension.fromHex("#63C4C3"),
      appTextColor: ColorExtension.fromHex("#028E8E"),
      appSecondColor: ColorExtension.fromHex("#EA7E00"),
    ),
    AppThemeModel(
      themeId: 2,
      appPrimaryColor: ColorExtension.fromHex("#61B964"),
      appTextColor: ColorExtension.fromHex("#2C762F"),
      appSecondColor: ColorExtension.fromHex("#671ECB"),
    ),
    AppThemeModel(
      themeId: 3,
      appPrimaryColor: ColorExtension.fromHex("#5075DB"),
      appTextColor: ColorExtension.fromHex("#1C3BBE"),
      appSecondColor: ColorExtension.fromHex("#ED8012"),
    ),
    AppThemeModel(
      themeId: 4,
      appPrimaryColor: ColorExtension.fromHex("#EBC31D"),
      appTextColor: ColorExtension.fromHex("#D0A123"),
      appSecondColor: ColorExtension.fromHex("#218167"),
    ),
    AppThemeModel(
      themeId: 5,
      appPrimaryColor: ColorExtension.fromHex("#B150DB"),
      appTextColor: ColorExtension.fromHex("#7F34A0"),
      appSecondColor: ColorExtension.fromHex("#23A255"),
    ),
    AppThemeModel(
      themeId: 6,
      appPrimaryColor: ColorExtension.fromHex("#DB506B"),
      appTextColor: ColorExtension.fromHex("#BC0D4A"),
      appSecondColor: ColorExtension.fromHex("#1DCCDB"),
    ),
  ];

// this method to detect the app theme depend on the theme which comming from database
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
