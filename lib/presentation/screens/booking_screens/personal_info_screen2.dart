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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 15.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssetsUtil.patientBackgroundSama3aImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                title: AppLocalizations.of(context)!.personal_information,
                titleStyle: AppStylesUtil.textBoldStyle(
                  18.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
                iconColor: AppColorUtil.iconsDarkGreen,
                space: 70.horizontalSpace,
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  AppLocalizations.of(context)!.your_information_will_be_shared,
                  style: AppStylesUtil.textBoldStyle(
                    11.sp,
                    AppColorUtil.textDarkGreen,
                    FontWeight.w400,
                  ),
                ),
              ),
              50.verticalSpace,
              Text(
                AppLocalizations.of(context)!.gender,
                style: AppStylesUtil.textBoldStyle(
                  15.sp,
                  Colors.black,
                  FontWeight.w400,
                ),
              ),
              10.verticalSpace,
              Container(
                height: 40.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                            iconColor: BookingAppointmentScreenHelper.instance()
                                .setMaleColor(),
                            textColor: BookingAppointmentScreenHelper.instance()
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
                            iconColor: BookingAppointmentScreenHelper.instance()
                                .setFemaleColor(),
                            textColor: BookingAppointmentScreenHelper.instance()
                                .setFemaleColor(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              20.verticalSpace,
              Text(
                AppLocalizations.of(context)!.date_of_birth,
                style: AppStylesUtil.textBoldStyle(
                  15.sp,
                  Colors.black,
                  FontWeight.w400,
                ),
              ),
              10.verticalSpace,
              Container(
                width: double.maxFinite,
                height: 40.h,
                margin: EdgeInsets.only(right: 35.w),
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(
                    color: Colors.grey[200]!,
                    width: 0.5,
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
              150.verticalSpace,
              SizedBox(
                width: ScreenResizer.getScreenWidth(context) / 2,
                child: Text(
                  loremText,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: AppStylesUtil.textBoldStyle(
                    18.sp,
                    AppColorUtil.white,
                    FontWeight.bold,
                  ),
                ),
              ),
              40.verticalSpace,
              AppButtonWidget(
                onClick: () {
                  BookingAppointmentScreenHelper.instance().navToThirdPage(2);
                },
                customChild: Text(
                  AppLocalizations.of(context)!.continues,
                  style: AppStylesUtil.textBoldStyle(
                    16.sp,
                    AppColorUtil.iconsDarkGreen,
                    FontWeight.bold,
                  ),
                ),
                btnBackgroundColor: AppColorUtil.white,
                btnSize: Size(
                  double.maxFinite,
                  45.h,
                ),
                btnRadius: 10.sp,
                width: double.maxFinite,
                height: 45.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
