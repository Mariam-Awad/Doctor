import 'package:doctor/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class AppStylesUtil {
  static TextStyle? textBoldStyle(
          double size, Color textColor, FontWeight weight) =>
      TextStyle(
        fontSize: size,
        fontFamily: appFontBold,
        color: textColor,
        fontWeight: weight,
      );

  static TextStyle? textRegularStyle(
          double size, Color textColor, FontWeight weight) =>
      TextStyle(
        fontSize: size,
        fontFamily: appFontRegular,
        color: textColor,
        fontWeight: weight,
      );
}
