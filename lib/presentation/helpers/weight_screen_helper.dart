import 'package:flutter/material.dart';

import '../../core/utils/app_colors_util.dart';

class WeightScreenHelper {
  static WeightScreenHelper? _oldScreenHelper;
  WeightScreenHelper._internal();
  static WeightScreenHelper instance() {
    if (_oldScreenHelper == null) {
      return _oldScreenHelper = WeightScreenHelper._internal();
    }
    return _oldScreenHelper!;
  }

  Color backgroundColor0 = AppColorUtil.backgroundLightBabyBlue;
  Color textColor0 = AppColorUtil.textDarkGreen;
  Color backgroundColor1 = AppColorUtil.backgroundLightBabyBlue;
  Color textColor1 = AppColorUtil.textDarkGreen;
  String suffixText = '';

  changeCurrentColor(int componentId) {
    if (componentId == 0) {
      backgroundColor0 = AppColorUtil.backgroundDarkBabyBlue;
      backgroundColor1 = AppColorUtil.backgroundLightBabyBlue;
      textColor0 = AppColorUtil.white;
      textColor1 = AppColorUtil.textDarkGreen;
      suffixText = 'Kg';
    } else if (componentId == 1) {
      backgroundColor1 = AppColorUtil.backgroundDarkBabyBlue;
      backgroundColor0 = AppColorUtil.backgroundLightBabyBlue;
      textColor1 = AppColorUtil.white;
      textColor0 = AppColorUtil.textDarkGreen;
      suffixText = 'Lbs';
    }
  }
}
