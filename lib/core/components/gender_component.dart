import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GenderComponent extends StatelessWidget {
  String iconAsset;
  String title;
  void Function()? onTap;

  GenderComponent(
      {super.key, required this.iconAsset, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(iconAsset,
                  width: 40.w, height: 40.h, fit: BoxFit.contain),
              Text(title,
                  style: AppStylesUtil.textRegularStyle(
                      12.sp, AppColorUtil.textblackBold, FontWeight.bold))
            ],
          ),
        ));
  }
}
