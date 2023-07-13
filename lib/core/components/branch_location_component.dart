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
  final Color fillContainerColor;
  final void Function()? onTap;

  const BranchLocationComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.textlocation,
      required this.fillContainerColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: widthContainer,
        height: heightContainer,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: fillContainerColor, 
            border:
                Border.all(color: AppColorUtil.backgroundDarkBabyBlue, width: 1),
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconAsset,
                width: 10.w, height: 14.h, fit: BoxFit.contain),
            Expanded(
              child: Text(textlocation,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppStylesUtil.textRegularStyle(
                      12.sp,
                      AppColorUtil.visaDarkBlack, // White
                      FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
