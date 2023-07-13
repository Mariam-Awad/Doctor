import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationComponent extends StatelessWidget {
  const AppBottomNavigationComponent({
    required this.bottomColor,
    required this.selectedColor,
    required this.bottomItems,
    required this.onCLick,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);
  final Color bottomColor, selectedColor;
  final void Function(int value)? onCLick;
  final List<Widget> bottomItems;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60.0,
      index: currentIndex,
      backgroundColor: bottomColor,
      color: selectedColor,
      onTap: onCLick,
      items: bottomItems,
    );
  }
}
