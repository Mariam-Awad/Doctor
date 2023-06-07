import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/widgets/app_button_widget.dart';
import '../../presentation/widgets/cancel_visit_widget.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class UpcomingVisitComponent extends StatelessWidget {
  final String iconAsset;
  final String doctorName;
  final String doctorSpicialization;
  final String date;
  final String time;

  const UpcomingVisitComponent(
      {super.key,
      required this.iconAsset,
      required this.doctorName,
      required this.doctorSpicialization,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Material(
          elevation: 8.0,
          color: AppColorUtil.backgroundDarkWhite,
          shadowColor: AppColorUtil.semiDarkWhite,
          borderRadius: BorderRadius.circular(12.r),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 14.h),
              width: 302.w,
              height: 161.h,
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
                                      color: AppColorUtil.orange,
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                ),
                                6.horizontalSpace,
                                Text(
                                  'Pending',
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
                                style: AppStylesUtil.textRegularStyle(
                                    10.sp,
                                    AppColorUtil.textDarkGreen,
                                    FontWeight.w400),
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
                                style: AppStylesUtil.textRegularStyle(
                                    10.sp,
                                    AppColorUtil.textDarkGreen,
                                    FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppButtonWidget(
                          width: 100.w,
                          height: 25.h,
                          btnSize: Size(100.w, 25.h),
                          btnRadius: 12.0,
                          btnBackgroundColor: AppColorUtil.white,
                          onClick: () {
                            cancelDialog(context);
                          },
                          border: BorderSide(
                              color: AppColorUtil.textDarkGreen, width: 1.0),
                          customChild: Text(
                            'Cancel',
                            style: AppStylesUtil.textRegularStyle(10.sp,
                                AppColorUtil.textDarkGreen, FontWeight.w400),
                          ),
                        ),
                        AppButtonWidget(
                          width: 100.w,
                          height: 25.h,
                          btnSize: Size(100.w, 25.h),
                          btnRadius: 12.0,
                          btnBackgroundColor: AppColorUtil.textDarkGreen,
                          onClick: () {},
                          customChild: Text(
                            'Reschedule',
                            style: AppStylesUtil.textRegularStyle(
                                10.sp, AppColorUtil.white, FontWeight.w400),
                          ),
                        ),
                      ],
                    )
                  ]))),
    );
  }
}
