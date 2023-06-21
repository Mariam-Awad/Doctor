import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewBookingViewWidget extends StatelessWidget {
  const ReviewBookingViewWidget({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final dynamic value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: ScreenResizer.getScreenWidth(context)/1.2,
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        decoration: BoxDecoration(
          color: AppColorUtil.lightBabyBlue,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                style: AppStylesUtil.textBoldStyle(
                  12.sp,
                  Colors.black,
                  FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              child: Text(
                value.toString(),
                style: AppStylesUtil.textBoldStyle(
                  12.sp,
                  Colors.black,
                  FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
