import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoScreen1 extends StatelessWidget {
  const PersonalInfoScreen1({super.key});

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
                  AppNavigationManager.navPop(context);
                },
                titleIsVisible: true,
                title: AppLocalizations.of(context)!.personal_information,
                titleStyle: AppStylesUtil.textBoldStyle(
                  18.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
                iconColor: AppColorUtil.iconsDarkGreen,
                space: 30.horizontalSpace,
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
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
              Form(
                key: BookingAppointmentScreenHelper.instance().formKeyScreen1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.full_name,
                      style: AppStylesUtil.textBoldStyle(
                        15.sp,
                        Colors.black,
                        FontWeight.w400,
                      ),
                    ),
                    10.verticalSpace,
                    AppTextFormWidget(
                      hint: "enter your full name",
                      textFormFieldWidth: 300.w,
                      textType: TextInputType.text,
                      onChangeListener: (value) {},
                      onValidateListener: (value) {
                        return ValidateAuthField.instance()
                            .validateField(value!);
                      },
                      sideColor: AppColorUtil.shadowGrey,
                      radius: 10.sp,
                      sideWidth: .5,
                      initialValue: "",
                      fillColor: AppColorUtil.white,
                      isFiled: true,
                      fontType: appFontBold,
                      hintSize: 10.sp,
                      textSize: 10.sp,
                      label: "Ex:Ahmed Talal",
                      labelSize: 20.sp,
                    ),
                    20.verticalSpace,
                    Text(
                      AppLocalizations.of(context)!.telephone,
                      style: AppStylesUtil.textBoldStyle(
                        15.sp,
                        Colors.black,
                        FontWeight.w400,
                      ),
                    ),
                    10.verticalSpace,
                    AppTextFormWidget(
                      hint: "enter your phone number",
                      textFormFieldWidth: 300.w,
                      textType: TextInputType.number,
                      onChangeListener: (value) {},
                      onValidateListener: (value) {
                        return ValidateAuthField.instance()
                            .validatePhoneNumber(value!);
                      },
                      sideColor: AppColorUtil.shadowGrey,
                      radius: 10.sp,
                      sideWidth: .5,
                      initialValue: "",
                      fillColor: AppColorUtil.white,
                      isFiled: true,
                      fontType: appFontBold,
                      hintSize: 10.sp,
                      textSize: 10.sp,
                      label: "+20 1111077944",
                      labelSize: 20.sp,
                    ),
                  ],
                ),
              ),
              130.verticalSpace,
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
              30.verticalSpace,
              AppButtonWidget(
                onClick: () {
                  BookingAppointmentScreenHelper.instance().navToSecondPage(
                    1,
                  );
                },
                customChild: Text(
                  AppLocalizations.of(context)!.continues,
                  style: AppStylesUtil.textBoldStyle(
                    18.sp,
                    AppColorUtil.iconsDarkGreen,
                    FontWeight.bold,
                  ),
                ),
                btnBackgroundColor: AppColorUtil.white,
                btnSize: Size(
                  double.maxFinite,
                  50.h,
                ),
                btnRadius: 10.sp,
                width: double.maxFinite,
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
