import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GenderComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String title;
  final Color pressedTitleColor, containerColor, iconColor, textColor;
  final Color pressedIconColor;
  final void Function()? onTap;

  const GenderComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.title,
      required this.pressedIconColor,
      required this.pressedTitleColor,
      required this.containerColor,
      required this.iconColor,
      required this.textColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap, // ToDo
        child: Container(
          width: widthContainer.w,
          height: heightContainer.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              10.horizontalSpace,
              SvgPicture.asset(
                iconAsset,
                width: 15.w,
                height: 15.h,
                fit: BoxFit.contain,
                color: iconColor,
              ),
              20.horizontalSpace,
              Text(
                title,
                style: AppStylesUtil.textRegularStyle(
                  13.sp,
                  textColor,
                  FontWeight.w500,
                ),
              )
            ],
          ),
        ));
  }
}
