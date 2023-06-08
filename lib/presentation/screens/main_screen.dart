import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/components/app_bottom_navigation_component.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/main_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationComponent(
        bottomColor: AppColorUtil.white,
        selectedColor: AppColorUtil.background2LightGreen,
        currentIndex: MainScreenHelper.instance().currentIndex,
        bottomItems: [
          bottomNavItem(
            icon: AppAssetsUtil.bookIcon,
          ),
          bottomNavItem(
            icon: AppAssetsUtil.notificationIcon,
          ),
          bottomNavItem(
            icon: AppAssetsUtil.homeIcon,
          ),
          bottomNavItem(
            icon: AppAssetsUtil.chatIcon,
          ),
          bottomNavItem(
            icon: AppAssetsUtil.doctorIcon,
          ),
        ],
        onCLick: (value) {
          setState(() {
            MainScreenHelper.instance().changeCurrentIndex(value);
          });
        },
      ),
      body: SizedBox(
        height: ScreenResizer.getScreenHeight(context),
        width: ScreenResizer.getScreenWidth(context),
        child: MainScreenHelper.instance()
            .screens
            .elementAt(MainScreenHelper.instance().currentIndex),
      ),
    );
  }
}
