import 'package:flutter/material.dart';

import '../../core/utils/app_colors_util.dart';

class BranchScreenHelper {
  static BranchScreenHelper? _defineProblemScreenHelper;
  BranchScreenHelper._internal();
  static BranchScreenHelper instance() {
    if (_defineProblemScreenHelper == null) {
      return _defineProblemScreenHelper = BranchScreenHelper._internal();
    }
    return _defineProblemScreenHelper!;
  }

  Color fillColor0 = AppColorUtil.white;
  Color fillColor1 = AppColorUtil.white;

  changeCurrentColor(int componentId) {
    if (componentId == 0) {
      fillColor0 = AppColorUtil.shadowLocationColor;
      fillColor1 = AppColorUtil.white;
    } else if (componentId == 1) {
      fillColor0 = AppColorUtil.white;
      fillColor1 = AppColorUtil.shadowLocationColor;
    }
  }
}
