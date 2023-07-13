import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class AboutDoctorCardComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String doctorName;
  final String doctorSpecialization;
  final void Function() onClick;

  const AboutDoctorCardComponent({
    super.key,
    required this.widthContainer,
    required this.heightContainer,
    required this.doctorName,
    required this.doctorSpecialization,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 22.h, left: 20.w),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage(AppAssetsUtil.backgroundDoctorCard),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBackBtnWidget(
            titleStyle: AppStylesUtil.textBoldStyle(
              15.sp,
              AppColorUtil.white,
              FontWeight.bold,
            ),
            onClick: onClick,
            titleIsVisible: true,
            title: "Back to Home",
            iconColor: AppColorUtil.white,
            space: 20.horizontalSpace,
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
