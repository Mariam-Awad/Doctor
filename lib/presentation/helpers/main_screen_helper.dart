import 'package:doctor/presentation/screens/bottom_nav_screens/account_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/chat_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/home_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/notification_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/visits_screen.dart';
import 'package:flutter/material.dart';

class MainScreenHelper {
  static MainScreenHelper? _mainScreenHelper;
  MainScreenHelper._internal();
  static MainScreenHelper instance() {
    if (_mainScreenHelper == null) {
      return _mainScreenHelper = MainScreenHelper._internal();
    }
    return _mainScreenHelper!;
  }

  List<Widget> screens = const [
    VisitsScreen(),
    NotificationScreen(),
    HomeScreen(),
    ChatScreen(),
    AccountScreen(),
  ];

  int currentIndex = 2;
  changeCurrentIndex(int index) => currentIndex = index;

}
