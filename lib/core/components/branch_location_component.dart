import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class BranchLocationComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String textlocation;
  final void Function()? onTap;

  const BranchLocationComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.textlocation,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          color: AppColorUtil.white, // todo Change when On Clicked to
          // AppColorUtil.backgroundGrey
          border:
              Border.all(color: AppColorUtil.backgroundDarkBabyBlue, width: 1),
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(iconAsset,
              width: 10.w, height: 14.h, fit: BoxFit.contain),
          Text(textlocation,
              textAlign: TextAlign.center,
              style: AppStylesUtil.textRegularStyle(
                  12.sp,
                  AppColorUtil.textDarkGreen, // White
                  FontWeight.w400)),
        ],
      ),
    );
  }
}
