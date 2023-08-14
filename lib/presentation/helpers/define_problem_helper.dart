import 'package:flutter/material.dart';

import '../../core/utils/app_colors_util.dart';

class DefineProblemHelper {
  static DefineProblemHelper? _defineProblemScreenHelper;
  DefineProblemHelper._internal();
  static DefineProblemHelper instance() {
    if (_defineProblemScreenHelper == null) {
      return _defineProblemScreenHelper = DefineProblemHelper._internal();
    }
    return _defineProblemScreenHelper!;
  }

  Color borderColor0 = AppColorUtil.backgroundLightBabyBlue;
  Color borderColor1 = AppColorUtil.backgroundLightBabyBlue;

  changeCurrentColor( int componentId){
    if(componentId == 0){
       borderColor0 = AppColorUtil.backgroundDarkBabyBlue;
       borderColor1 = AppColorUtil.backgroundLightBabyBlue;
    }else if (componentId == 1){
       borderColor0 = AppColorUtil.backgroundLightBabyBlue;
       borderColor1 = AppColorUtil.backgroundDarkBabyBlue;
    }
   
  } 
}
