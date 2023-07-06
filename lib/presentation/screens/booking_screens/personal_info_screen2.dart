import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/components/gender_component.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoScreen2 extends StatelessWidget {
  const PersonalInfoScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding:
              EdgeInsets.only(top: 30.h, bottom: 20.h, left: 10.w, right: 10.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssetsUtil.personalInfoBackgroundImage,
              ),
              fit: BoxFit.cover,
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
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.personal_information,
                        textAlign: TextAlign.center,
                        style: AppStylesUtil.textBoldStyle(
                          20.sp,
                          AppColorUtil.textDarkGreen,
                          FontWeight.bold,
                        ),
                      ),
                      5.verticalSpace,
                      SizedBox(
                        width: 260.h,
                        child: Text(
                          AppLocalizations.of(context)!
                              .your_information_will_be_shared,
                          textAlign: TextAlign.center,
                          style: AppStylesUtil.textBoldStyle(
                            12.sp,
                            AppColorUtil.textDarkGreen.withOpacity(0.60),
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 140.h,
                left: 30.w,
                child: Text(
                  AppLocalizations.of(context)!.gender,
                  style: AppStylesUtil.textBoldStyle(
                    16.sp,
                    AppColorUtil.visaDarkBlack,
                    FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 180.h,
                left: 30.w,
                child: SizedBox(
                  height: 40.h,
                  width: 302.w,
                  child: StatefulBuilder(builder: (context, setState) {
                    return Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey[200]!,
                                width: 0.5,
                              ),
                            ),
                            child: GenderComponent(
                              title: AppLocalizations.of(context)!.male,
                              heightContainer: 40.h,
                              widthContainer: double.maxFinite,
                              iconAsset: AppAssetsUtil.maleIcon,
                              pressedIconColor: Colors.black,
                              pressedTitleColor: Colors.black,
                              containerColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .maleContainerColor,
                              onTap: () {
                                setState(() {
                                  BookingAppointmentScreenHelper.instance()
                                      .chooseGender("male");
                                });
                              },
                              iconColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .setMaleColor(),
                              textColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .setMaleColor(),
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey[200]!, width: 0.5)),
                            child: GenderComponent(
                              title: AppLocalizations.of(context)!.female,
                              heightContainer: 40.h,
                              widthContainer: double.maxFinite,
                              iconAsset: AppAssetsUtil.femaleIcon,
                              pressedIconColor: Colors.black,
                              pressedTitleColor: Colors.black,
                              containerColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .femaleContainerColor,
                              onTap: () {
                                setState(() {
                                  BookingAppointmentScreenHelper.instance()
                                      .chooseGender("female");
                                });
                              },
                              iconColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .setFemaleColor(),
                              textColor:
                                  BookingAppointmentScreenHelper.instance()
                                      .setFemaleColor(),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              Positioned(
                top: 240.h,
                left: 30.w,
                child: Text(
                  AppLocalizations.of(context)!.date_of_birth,
                  style: AppStylesUtil.textBoldStyle(
                    16.sp,
                    AppColorUtil.visaDarkBlack,
                    FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 270.h,
                left: 30.w,
                child: Container(
                  width: 302.w,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(
                      color: AppColorUtil.shadowGrey,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MM/YY",
                        style: AppStylesUtil.textBoldStyle(
                          13.sp,
                          Colors.black,
                          FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.date_range,
                          color: AppColorUtil.backgroundLightGreen,
                          size: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 110,
                left: 30.w,
                child: SizedBox(
                  height: 165.h,
                  width: 130.w,
                  child: Text(
                    AppLocalizations.of(context)!.lorem,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    style: AppStylesUtil.textBoldStyle(
                      20.sp,
                      AppColorUtil.white,
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30.h,
                child: AppButtonWidget(
                  onClick: () {
                    BookingAppointmentScreenHelper.instance()
                        .navToSecondPage(2);
                  },
                  customChild: Text(
                    AppLocalizations.of(context)!.continues,
                    style: AppStylesUtil.textRegularStyle(
                      16.sp,
                      AppColorUtil.textDarkGreen,
                      FontWeight.bold,
                    ),
                  ),
                  btnBackgroundColor: AppColorUtil.white,
                  btnPadding: EdgeInsets.all(5.sp),
                  btnSize: Size(302.w, 40.h),
                  btnRadius: 12,
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
