import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles_util.dart';

class IdentityVerificationSelfieCard extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String title;
  final String descreption;
  final void Function()? onTap;

  const IdentityVerificationSelfieCard(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.title,
      required this.descreption,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColorUtil.textDarkGreen,
      dashPattern: const [8, 8, 8, 8],
      strokeWidth: 2.0,
      borderType: BorderType.RRect,
      radius: Radius.circular(12.r),
      child: Container(
        width: widthContainer,
        height: heightContainer,
        decoration: BoxDecoration(
            color: AppColorUtil.white, // Change
            borderRadius: BorderRadius.circular(12.r)),
        child: Padding(
          padding:
              EdgeInsets.only(bottom: 8.h, top: 25.h, left: 5.w, right: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title,
                  textAlign: TextAlign.center,
                  style: AppStylesUtil.textRegularStyle(
                      14.sp,
                      AppColorUtil.textDarkGreen, // White
                      FontWeight.bold)),
              5.verticalSpace,
              Text(descreption,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStylesUtil.textRegularStyle(
                      10.sp,
                      AppColorUtil.textDarkGreen, // White
                      FontWeight.w500)),
              25.verticalSpace,
              SvgPicture.asset(iconAsset,
                  width: 55.w, height: 55.h, fit: BoxFit.contain),
            ],
          ),
        ),
      ),
    );
  }
}
