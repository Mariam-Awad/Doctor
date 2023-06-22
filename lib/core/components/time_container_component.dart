import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class TimeContainerComponent extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;
  final Color containerFillColor;
  final Color borderColor;
  final Color textColor;
  final bool enabled;
  final String timeText;
  final void Function()? onTap;

  const TimeContainerComponent({
    super.key,
    required this.containerWidth,
    required this.containerHeight,
    required this.containerFillColor,
    required this.borderColor,
    required this.textColor,
    required this.enabled,
    required this.timeText,
    this.onTap,
    required,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Container(
        width: containerWidth,
        height: containerHeight,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: enabled ? containerFillColor : AppColorUtil.white,
            border: Border.all(
                color: enabled ? borderColor : AppColorUtil.textLightGrey,
                width: 1),
            borderRadius: BorderRadius.circular(7.r)),
        child: Center(
          child: Text(timeText,
              textAlign: TextAlign.center,
              style: AppStylesUtil.textRegularStyle(
                  14.sp,
                  enabled ? textColor : AppColorUtil.textLightGrey, // White
                  FontWeight.w400)),
        ),
      ),
    );
  }
}
