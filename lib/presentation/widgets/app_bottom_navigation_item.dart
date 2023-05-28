import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavItem({
  required String title,
  required IconData icon,
  IconData? activeIcon,
  Color? backgroundColor,
}) =>
    BottomNavigationBarItem(
      label: title,
      icon: Icon(icon),
      activeIcon: Icon(activeIcon),
      backgroundColor: backgroundColor,
    );
