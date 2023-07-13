import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_styles_util.dart';

class NotificationComponent extends StatelessWidget {
  final String title;
  final String discreption;
  final void Function()? onTap;

  const NotificationComponent(
      {super.key, required this.title, required this.discreption, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302.w,
      height: 76.h,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: AppColorUtil.textDarkGreen.withOpacity(0.75),
          borderRadius: BorderRadius.circular(12.r)),
      child: Stack(
        children: [
          Positioned(
              right: 0.w,
              top: -5.h,
              child: IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.delete_outline_outlined),
                color: AppColorUtil.white,
                iconSize: 20.0,
              )),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: AppStylesUtil.textRegularStyle(
                      15.sp, AppColorUtil.white, FontWeight.w400),
                ),
                6.verticalSpace,
                Text(
                  discreption,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStylesUtil.textRegularStyle(
                      10.sp, AppColorUtil.white, FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
