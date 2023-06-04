import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_colors_util.dart';

class AppBackBtnWidget extends StatelessWidget {
  const AppBackBtnWidget({
    required this.onClick,
    this.title,
    required this.titleIsVisible,
    super.key,
  });
  final String? title ;
  final bool titleIsVisible ;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onClick,
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
            color: AppColorUtil.darkGreen,
          ),
        ),
        70.horizontalSpace,
        Visibility(
          visible: titleIsVisible,
          child: Text(
            title == null ? "":title!,
            style: AppStylesUtil.textBoldStyle(
              18.sp,
              AppColorUtil.textDarkGreen,
              FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
