import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class PastCanceledVisitComponent extends StatelessWidget {
  final String iconAsset;
  final String doctorName;
  final String doctorSpicialization;
  final String status;
  final Color statusColor;
  final String date;
  final String time;

  const PastCanceledVisitComponent(
      {super.key,
      required this.iconAsset,
      required this.doctorName,
      required this.doctorSpicialization,
      required this.status,
      required this.statusColor,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 8.0,
        color: AppColorUtil.backgroundDarkWhite,
        shadowColor: AppColorUtil.semiDarkWhite,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 14.h),
            width: 302.w,
            height: 131.h,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        iconAsset,
                        height: 65.h,
                        width: 60.w,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctorName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: AppStylesUtil.textRegularStyle(16.sp,
                                AppColorUtil.textDarkGreen, FontWeight.bold),
                          ),
                          Text(
                            doctorSpicialization,
                            style: AppStylesUtil.textRegularStyle(12.sp,
                                AppColorUtil.textDarkGreen, FontWeight.w400),
                          ),
                          8.verticalSpace,
                          Row(
                            children: [
                              Container(
                                width: 8.w,
                                height: 8.h,
                                decoration: BoxDecoration(
                                    color: statusColor,
                                    borderRadius: BorderRadius.circular(12.r)),
                              ),
                              6.horizontalSpace,
                              Text(
                                status,
                                style: AppStylesUtil.textRegularStyle(
                                    12.sp,
                                    AppColorUtil.textblackBold,
                                    FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 220.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: AppColorUtil.backgroundLightBabyBlue,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: AppColorUtil.textDarkGreen,
                              size: 15.0,
                            ),
                            6.horizontalSpace,
                            Text(
                              date,
                              style: AppStylesUtil.textRegularStyle(10.sp,
                                  AppColorUtil.textDarkGreen, FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: AppColorUtil.textDarkGreen,
                              size: 15.0,
                            ),
                            6.horizontalSpace,
                            Text(
                              time,
                              style: AppStylesUtil.textRegularStyle(10.sp,
                                  AppColorUtil.textDarkGreen, FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
