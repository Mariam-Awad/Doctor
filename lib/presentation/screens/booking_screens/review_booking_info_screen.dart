import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/helpers/review_booking_info_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewBookingInfoScreen extends StatelessWidget {
  const ReviewBookingInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssetsUtil.reviewBackgroundImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              70.verticalSpace,
              AppBackBtnWidget(
                onClick: () {
                  BookingAppointmentScreenHelper.instance()
                      .bookingController
                      .previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                },
                titleIsVisible: true,
                titleStyle: AppStylesUtil.textBoldStyle(
                  20.sp,
                  AppColorUtil.darkGreen,
                  FontWeight.bold,
                ),
                iconColor: AppColorUtil.darkGreen,
                space: 50.horizontalSpace,
                title: AppLocalizations.of(context)!.review,
              ),
              10.verticalSpace,
              SizedBox(
                height: ScreenResizer.getScreenHeight(context) / 2.1,
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
              5.verticalSpace,
              StatefulBuilder(
                builder: (context, setState) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                : Colors.grey[300],
                          ),
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
                                : Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              70.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Text(
                    AppLocalizations.of(context)!.upload_attachments,
                    style: AppStylesUtil.textBoldStyle(
                      16.sp,
                      AppColorUtil.darkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnSize: Size(double.maxFinite,50.h),
                  btnRadius: 10.sp,
                  width: double.maxFinite,
                  height: 50.h,
                ),
              ),
              10.verticalSpace,
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.w),
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Text(
                    AppLocalizations.of(context)!.online_payment,
                    style: AppStylesUtil.textBoldStyle(
                      16.sp,
                      AppColorUtil.darkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnSize: Size(double.maxFinite,50.h),
                  btnRadius: 10.sp,
                  width: double.maxFinite,
                  height: 50.h,
                ),
              ),
              10.verticalSpace,
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Text(
                    AppLocalizations.of(context)!.book_an_appointment,
                    style: AppStylesUtil.textBoldStyle(
                      16.sp,
                      AppColorUtil.darkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnSize: Size(double.maxFinite,50.h),
                  btnRadius: 10.sp,
                  width: double.maxFinite,
                  height: 50.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
