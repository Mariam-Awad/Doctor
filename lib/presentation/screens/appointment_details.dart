import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/components/past_canceled_visit_component.dart';
import 'package:doctor/core/components/upcoming_visit_component.dart';
import 'package:doctor/presentation/helpers/visits_screen_helper.dart';
import 'package:doctor/presentation/widgets/appointment_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/screen_resizer.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_colors_util.dart';
import '../../../core/utils/app_styles_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/app_button_widget.dart';

class AppointmentDetails extends StatefulWidget {
  const AppointmentDetails({super.key});

  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 30.w,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                10.verticalSpace,
                Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 25.sp,
                        color: AppColorUtil.darkGreen,
                      ),
                    )),
                Center(
                  child: Text(
                    'Appointment Details',
                    style: AppStylesUtil.textBoldStyle(
                      20.sp,
                      AppColorUtil.textDarkGreen,
                      FontWeight.bold,
                    ),
                  ),
                ),
                35.verticalSpace,
                Column(
                  children: [
                    const AppointmentRowWidget(
                      title: 'Appointment Date',
                      subtitle: 'January WED 29',
                    ),
                    22.verticalSpace,
                    const AppointmentRowWidget(
                      title: 'Appointment Time',
                      subtitle: '11:04 am',
                    ),
                    22.verticalSpace,
                    const AppointmentRowWidget(
                      title: 'Visit Type',
                      subtitle: 'Medical Consultation',
                    ),
                    22.verticalSpace,
                    const AppointmentRowWidget(
                      title: 'Your Problem',
                      subtitle: 'Stomach Pain',
                    )
                  ],
                ),
                60.verticalSpace,
                Center(
                  child: Container(
                    width: 302.w,
                    height: 120.h,
                    padding: const EdgeInsets.only(bottom: 12, left: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            image: const AssetImage(AppAssetsUtil.mapImage),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Branch',
                          style: AppStylesUtil.textBoldStyle(
                              12.0, AppColorUtil.white, FontWeight.bold),
                        ),
                        8.verticalSpace,
                        Text(
                          '16-El-fath Street ,Mohandsien Mit Okba , Giza Governorate',
                          style: AppStylesUtil.textBoldStyle(
                              12.0, AppColorUtil.white, FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                12.verticalSpace,
                AppButtonWidget(
                  onClick: () {
                    // todo
                  },
                  customChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Get Direction',
                        style: AppStylesUtil.textRegularStyle(
                          17.sp,
                          AppColorUtil.white.withOpacity(0.7),
                          FontWeight.bold,
                        ),
                      ),
                      10.horizontalSpace,
                      Icon(
                        Icons.pin_drop,
                        color: AppColorUtil.orange,
                        size: 20,
                      )
                    ],
                  ),
                  btnBackgroundColor: AppColorUtil.textDarkGreen,
                  btnPadding: EdgeInsets.all(5.sp),
                  btnSize: Size(302.w, 40.h),
                  width: 302.w,
                  height: 40.h,
                  btnRadius: 12,
                ),
              ]),
        ),
      ),
    );
  }
}
