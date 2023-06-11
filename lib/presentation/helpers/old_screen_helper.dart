import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/account_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/chat_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/home_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/notification_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/visits_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OldScreenHelper {
  static OldScreenHelper? _oldScreenHelper;
  OldScreenHelper._internal();
  static OldScreenHelper instance() {
    if (_oldScreenHelper == null) {
      return _oldScreenHelper = OldScreenHelper._internal();
    }
    return _oldScreenHelper!;
  }

  List<String> ages = const [
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    '49',
    '50',
    '51',
    '52',
    '53',
    '54',
    '55',
    '56',
    '57',
    '58',
    '59',
    '60',
    '61',
    '62',
    '63',
    '64',
    '65',
    '66',
    '67',
    '68',
    '69',
    '70',
    '71',
    '72',
    '73',
    '74',
    '75',
    '76',
    '77',
    '78',
    '79',
    '80',
  ];

  bool selected = false;

  double containerHeight = 95.h;
  Color textColor = AppColorUtil.textDarkGreen;
  Color containerBackgroundColor = AppColorUtil.white;
  Color containerBorderColor = AppColorUtil.textDarkGreen;

  onChangeAge(int index, double height, Color textChangedColor,
      Color containerColor, Color borderColor) {
    if (ages[index] == (index +12).toString() ) {
      containerHeight = height;
      textColor = textChangedColor;
      containerBackgroundColor = containerColor;
      containerBorderColor = borderColor;
    }
  }
}
