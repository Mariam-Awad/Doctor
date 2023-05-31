import 'package:doctor/presentation/screens/bottom_nav_screens/account_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/chat_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/home_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/notification_screen.dart';
import 'package:doctor/presentation/screens/bottom_nav_screens/visits_screen.dart';
import 'package:flutter/material.dart';

class MainHelper {
  static MainHelper? _mainHelper;
  MainHelper._internal();
  static MainHelper instance() {
    if (_mainHelper == null) {
      return _mainHelper = MainHelper._internal();
    }
    return _mainHelper!;
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
