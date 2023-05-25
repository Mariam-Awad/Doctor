import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class AboutDoctorCardComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String doctorName;
  final String doctorSpecialization;

  const AboutDoctorCardComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.doctorName,
      required this.doctorSpecialization});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 22.h, left: 20.w),
      width: widthContainer,
      height: heightContainer,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssetsUtil.backgroundDoctorCard),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              //todo
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColorUtil.white,
                  size: 16,
                ),
                8.horizontalSpace,
                Text(
                  'Back to Home',
                  textAlign: TextAlign.center,
                  style: AppStylesUtil.textRegularStyle(
                      14.sp, AppColorUtil.white, FontWeight.w400),
                ),
              ],
            ),
          ),
          25.verticalSpace,
          Text(
            doctorName,
            style: AppStylesUtil.textRegularStyle(
                30.sp, AppColorUtil.white, FontWeight.bold),
          ),
          8.verticalSpace,
          Text(
            doctorSpecialization,
            textAlign: TextAlign.center,
            style: AppStylesUtil.textRegularStyle(
                18.sp, AppColorUtil.white, FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
