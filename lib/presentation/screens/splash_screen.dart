import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';

import '../../core/components/gender_component.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil.backgroundGrey,
      body: Center(
        child: GenderComponent(
          iconAsset: AppAssetsUtil.maleIcon,
          title: 'Male',
        ),
      ),
    );
  }
}
