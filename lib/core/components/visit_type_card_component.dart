import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles_util.dart';

class VisitTypeCardComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String typetitle;
  final void Function()? onTap;

  const VisitTypeCardComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.typetitle,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          color: AppColorUtil.white, // Change
          border: Border.all(
              //todo Change AppColorUtil.backgroundDarkBabyBlue On Clicked
              color: AppColorUtil.backgroundLightBabyBlue,
              width: 2),
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.h, top: 20.h, left: 5.w, right: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconAsset,
                width: 55.w, height: 55.h, fit: BoxFit.contain),
            15.verticalSpace,
            Text(typetitle,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textRegularStyle(
                    12.sp,
                    AppColorUtil.textDarkGreen, // White
                    FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
