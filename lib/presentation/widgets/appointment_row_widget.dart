import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors_util.dart';
import '../../core/utils/app_styles_util.dart';

class AppointmentRowWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const AppointmentRowWidget({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: AppStylesUtil.textRegularStyle(
                16.0, AppColorUtil.textblackBold, FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
                color: AppColorUtil.backgroundLightBabyBlue,
                borderRadius: BorderRadius.circular(16.r)),
            child: Center(
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textBoldStyle(
                    14.0, AppColorUtil.backgroundDarkBabyBlue, FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
