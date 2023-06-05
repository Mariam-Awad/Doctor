import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileFormItemsView extends StatelessWidget {
  const UserProfileFormItemsView({
    required this.containerHeight,
    required this.containerBorderWidth,
    required this.containerChild,
    super.key,
  });
  final double containerHeight, containerBorderWidth;
  final Widget containerChild;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Container(
        height: containerHeight,
        width: double.maxFinite,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(
            color: AppColorUtil.background2LightGreen,
            width: containerBorderWidth,
          ),
          color: AppColorUtil.backgroundLightGreen.withOpacity(0.1),
        ),
        child: containerChild,
      ),
    );
  }
}