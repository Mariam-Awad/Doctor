import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class TestimonialsComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String iconAsset;
  final String title;
  final String discreption;
  const TestimonialsComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.iconAsset,
      required this.title,
      required this.discreption});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.grey[200]!.withOpacity(0.4),
      ),
      child: Row(
        children: [
          Image.asset(iconAsset,
              width: 55.w, height: 65.h, fit: BoxFit.contain),
          10.horizontalSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStylesUtil.textRegularStyle(
                      12.sp, AppColorUtil.textblackBold, FontWeight.bold),
                ),
                Text(
                  discreption,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppStylesUtil.textRegularStyle(
                      11.sp, AppColorUtil.textblackBold, FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
