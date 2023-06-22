import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/helpers/review_booking_info_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewBookingInfoScreen extends StatelessWidget {
  const ReviewBookingInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding:
              EdgeInsets.only(top: 30.h, bottom: 20.h, left: 10.w, right: 10.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssetsUtil.reviewBackgroundImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned(
                top: 30.h,
                left: 10.w,
                child: InkWell(
                  onTap: () {
                    BookingAppointmentScreenHelper.instance().navBackPage();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 23.0,
                    weight: 20.0,
                    color: AppColorUtil.textDarkGreen,
                  ),
                ),
              ),
              Positioned(
                  top: 50.h,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.review,
                      textAlign: TextAlign.center,
                      style: AppStylesUtil.textBoldStyle(
                        20.sp,
                        AppColorUtil.textDarkGreen,
                        FontWeight.bold,
                      ),
                    ),
                  )),
              Positioned(
                top: 100.h,
                child: SizedBox(
                  height: ScreenResizer.getScreenHeight(context) / 2.25,
                  width: 337.w,
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: ReviewBookingInfoScreenHelper.instance()
                        .pageVIewController,
                    itemCount: ReviewBookingInfoScreenHelper.instance()
                        .reviewScreenSections
                        .length,
                    itemBuilder: (context, index) {
                      return ReviewBookingInfoScreenHelper.instance()
                          .reviewScreenSections[index];
                    },
                  ),
                ),
              ),
              Positioned(
                top: 470.h,
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ReviewBookingInfoScreenHelper.instance()
                                  .pageVIewController
                                  .previousPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                              ReviewBookingInfoScreenHelper.instance().index =
                                  0;
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 20.sp,
                            color: ReviewBookingInfoScreenHelper.instance()
                                        .index ==
                                    1
                                ? AppColorUtil.iconsDarkGreen
                                : AppColorUtil.shadowGrey,
                          ),
                        ),
                        SizedBox(
                          width: 250.w,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              ReviewBookingInfoScreenHelper.instance()
                                  .pageVIewController
                                  .animateToPage(
                                    1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                              ReviewBookingInfoScreenHelper.instance().index =
                                  1;
                            });
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            size: 20.sp,
                            color: ReviewBookingInfoScreenHelper.instance()
                                        .index ==
                                    0
                                ? AppColorUtil.iconsDarkGreen
                                : AppColorUtil.shadowGrey,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 130.h,
                child: AppButtonWidget(
                  onClick: () {
                    // BookingAppointmentScreenHelper.instance().navToPage(3);
                  },
                  customChild: Text(
                    AppLocalizations.of(context)!.upload_attachments,
                    style: AppStylesUtil.textBoldStyle(
                      15.sp,
                      AppColorUtil.iconsDarkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnPadding: EdgeInsets.all(5.sp),
                  btnSize: Size(302.w, 40.h),
                  btnRadius: 12.sp,
                  height: 40.h,
                  width: 302.w,
                ),
              ),
              Positioned(
                bottom: 80.h,
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Text(
                    AppLocalizations.of(context)!.online_payment,
                    style: AppStylesUtil.textBoldStyle(
                      15.sp,
                      AppColorUtil.iconsDarkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnPadding: EdgeInsets.all(5.sp),
                  btnSize: Size(302.w, 40.h),
                  btnRadius: 12.sp,
                  height: 40.h,
                  width: 302.w,
                ),
              ),
              Positioned(
                bottom: 30.h,
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Text(
                    AppLocalizations.of(context)!.book_an_appointment,
                    style: AppStylesUtil.textBoldStyle(
                      15.sp,
                      AppColorUtil.iconsDarkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnPadding: EdgeInsets.all(5.sp),
                  btnSize: Size(302.w, 40.h),
                  btnRadius: 12.sp,
                  height: 40.h,
                  width: 302.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
