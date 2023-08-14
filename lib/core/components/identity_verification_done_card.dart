import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles_util.dart';

class IdentityVerificationDoneCard extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String title;
  final String descreption;
  final void Function()? onTap;

  const IdentityVerificationDoneCard(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.title,
      required this.descreption,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          color: AppColorUtil.textDarkGreen, // Change

          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.h, top: 25.h, left: 5.w, right: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textRegularStyle(
                    14.sp,
                    AppColorUtil.white, // White
                    FontWeight.bold)),
            5.verticalSpace,
            Text(descreption,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textRegularStyle(
                    10.sp,
                    AppColorUtil.white, // White
                    FontWeight.w400)),
            25.verticalSpace,
            SvgPicture.asset(iconAsset,
                width: 55.w, height: 55.h, fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
