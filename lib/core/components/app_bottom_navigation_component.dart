import 'package:flutter/material.dart';

class AppBottomNavigationComponent extends StatelessWidget {
  const AppBottomNavigationComponent({
    required this.bottomType,
  required this.bottomColor,
  required this.selectedColor,
  required this.unSelectedColor,
  required this.selectedFont,
  required this.unSelectedFont,
  required this.bottomItems,
  required this.onCLick,
  Key? key,
}) : super(key: key);
  final BottomNavigationBarType? bottomType ;
  final Color bottomColor,selectedColor,unSelectedColor ;
  final double selectedFont;
  final double unSelectedFont ;
  final void Function(int value)? onCLick;
  final List<BottomNavigationBarItem> bottomItems;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: bottomType,
      backgroundColor: bottomColor,
      selectedItemColor: selectedColor,
      unselectedItemColor: unSelectedColor,
      selectedFontSize: selectedFont,
      unselectedFontSize: unSelectedFont,
      onTap: onCLick,
      items: bottomItems,
    );
  }
}
