import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles_util.dart';

class DoctorServicesCardComponent extends StatelessWidget {
  final String iconAsset;
  final String title;

  const DoctorServicesCardComponent({
    super.key,
    required this.iconAsset,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(iconAsset,
            width: 55.w, height: 55.h, fit: BoxFit.contain),
        6.verticalSpace,
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppStylesUtil.textRegularStyle(
              10.sp, AppColorUtil.textblackBold, FontWeight.w500),
        ),
      ],
    );
  }
}
