import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../config/routes/app_navigation_manager.dart';
import '../../core/utils/app_assets_util.dart';
import '../../core/utils/app_colors_util.dart';
import '../../core/utils/app_styles_util.dart';
import 'app_button_widget.dart';

Future<dynamic> cancelDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierColor: AppColorUtil.backgroundLightBabyBlue.withOpacity(0.80),
    builder: (_) => Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    AppNavigationManager.navPop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColorUtil.textDarkGreen,
                    size: 25,
                  )),
            ),
            100.verticalSpace,
            DottedBorder(
              color: AppColorUtil.textDarkGreen,
              strokeWidth: 2.0,
              dashPattern: const [8, 8, 8, 8],
              borderType: BorderType.RRect,
              radius: Radius.circular(12.r),
              child: Column(
                children: [
                  Container(
                    width: 302.w,
                    height: 184.h,
                    padding: const EdgeInsets.all(12.0),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppAssetsUtil.cancelCircleIcon,
                            width: 58.w, height: 58.h, fit: BoxFit.contain),
                        Text(
                          'Your Appointment will be canceled\nwith Dr.Karim Aggour',
                          textAlign: TextAlign.center,
                          style: AppStylesUtil.textRegularStyle(
                              12.sp,
                              AppColorUtil.textDarkGreen.withOpacity(0.90),
                              FontWeight.w500),
                        ),
                        Container(
                          width: 220.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color:
                                  AppColorUtil.textDarkGreen.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: AppColorUtil.white,
                                    size: 15.0,
                                  ),
                                  6.horizontalSpace,
                                  Text(
                                    'Tuesday, 11 Jan',
                                    style: AppStylesUtil.textRegularStyle(10.sp,
                                        AppColorUtil.white, FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    color: AppColorUtil.white,
                                    size: 15.0,
                                  ),
                                  6.horizontalSpace,
                                  Text(
                                    '10:30 AM',
                                    style: AppStylesUtil.textRegularStyle(10.sp,
                                        AppColorUtil.white, FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            AppButtonWidget(
              onClick: () {
                AppNavigationManager.navPop(context);
              },
              customChild: Text(
                'Continue',
                style: AppStylesUtil.textBoldStyle(
                  16.sp,
                  Colors.white,
                  FontWeight.bold,
                ),
              ),
              btnBackgroundColor: AppColorUtil.textDarkGreen,
              btnPadding: EdgeInsets.all(5.sp),
              btnSize: Size(302.w, 50.h),
              btnRadius: 12,
              height: 40.h,
              width: 302.w,
            ),
          ],
        ),
      ),
    ),
  );
}
