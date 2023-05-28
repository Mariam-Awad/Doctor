import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_styles_util.dart';

class NotificationComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String title;
  final String discreption;
  final void Function()? onTap;

  const NotificationComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.title,
      required this.discreption,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          color: AppColorUtil.textDarkGreen,
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: AppStylesUtil.textRegularStyle(
                    15.sp, AppColorUtil.white, FontWeight.w400),
              ),
              IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.remove),
                color: AppColorUtil.white,
              )
            ],
          ),
          Text(
            discreption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppStylesUtil.textRegularStyle(
                10.sp, AppColorUtil.white, FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
