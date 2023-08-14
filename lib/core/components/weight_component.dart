import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeightComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final Color pressedBackgroundContainerColor;
  final String title;
  final Color pressedTitleColor;
  final void Function()? onTap;

  const WeightComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.title,
      required this.pressedTitleColor,
      this.onTap,
      required this.pressedBackgroundContainerColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: widthContainer.w,
          height: heightContainer.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          decoration: BoxDecoration(
              color: pressedBackgroundContainerColor,
              borderRadius: BorderRadius.circular(12.r)),
          child: Center(
            child: Text(title,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textRegularStyle(
                    16.sp, pressedTitleColor, FontWeight.bold)),
          ),
        ));
  }
}
