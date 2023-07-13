import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';

class AppProfileImageWidget extends StatelessWidget {
  const AppProfileImageWidget(
      {required this.image, required this.radius, super.key});
  final String image;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColorUtil.white,
      backgroundImage: AssetImage(
        image,
      ),
      radius: radius,
    );
  }
}
