import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles_util.dart';

class CertificateDoctorComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAssetCertificate1;
  final String iconAssetCertificate2;
  final String iconAssetCertificate3;
  final String title;
  final String discreption;

  const CertificateDoctorComponent(
      {super.key,
      required this.iconAssetCertificate1,
      required this.iconAssetCertificate2,
      required this.iconAssetCertificate3,
      required this.title,
      required this.discreption,
      required this.widthContainer,
      required this.heightContainer});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 8.0,
        shadowColor: AppColorUtil.semiDarkWhite,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
          width: widthContainer,
          height: heightContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.textDarkGreen, FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(iconAssetCertificate1,
                      width: 65.w, height: 65.h, fit: BoxFit.contain),
                  SvgPicture.asset(iconAssetCertificate2,
                      width: 65.w, height: 65.h, fit: BoxFit.contain),
                  SvgPicture.asset(iconAssetCertificate3,
                      width: 65.w, height: 65.h, fit: BoxFit.contain),
                ],
              ),
              Text(
                discreption,
                style: AppStylesUtil.textRegularStyle(
                    12.sp, AppColorUtil.textblackBold, FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
