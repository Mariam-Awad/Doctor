import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_link_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PaymentOtpScreen extends StatelessWidget {
  const PaymentOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              AppAssetsUtil.patientBackgroundLocationImage,
            ),
            fit: BoxFit.fill,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              70.verticalSpace,
              AppBackBtnWidget(
                onClick: () {},
                titleIsVisible: true,
                titleStyle: AppStylesUtil.textBoldStyle(
                  18.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
                iconColor: AppColorUtil.darkGreen,
                space: 100.horizontalSpace,
                title: AppLocalizations.of(context)!.otp,
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Text(
                  AppLocalizations.of(context)!
                      .enter_the_activation_code_that_has_been_sent_to_your_phone_number,
                  style: AppStylesUtil.textBoldStyle(
                    11.sp,
                    AppColorUtil.textDarkGreen,
                    FontWeight.w400,
                  ),
                ),
              ),
              40.verticalSpace,
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.start,
                fieldWidth: 55.w,
                borderRadius: BorderRadius.circular(10.sp),
                fillColor: AppColorUtil.lightBabyBlue,
                filled: true,
                numberOfFields: 4,
                borderColor: AppColorUtil.iconsDarkGreen,
                enabled: true,
                focusedBorderColor: AppColorUtil.iconsDarkGreen,
                disabledBorderColor: AppColorUtil.white,
                enabledBorderColor: AppColorUtil.white,
                showFieldAsBox: true,
                margin: EdgeInsets.only(left: 25.w),
                textStyle: AppStylesUtil.textRegularStyle(
                  15.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
              30.verticalSpace,
              Text(
                AppLocalizations.of(context)!
                    .a_code_has_been_sent_to_your_phone,
                style: AppStylesUtil.textBoldStyle(
                  12.sp,
                  AppColorUtil.textSemiDarkGrey,
                  FontWeight.normal,
                ),
              ),
              5.verticalSpace,
              AppTextLinkWidget(
                title: AppLocalizations.of(context)!.request_code_again,
                style: AppStylesUtil.textBoldStyle(
                  13.sp,
                  AppColorUtil.orange,
                  FontWeight.bold,
                )!,
                onClick: () {},
              ),
              200.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: ScreenResizer.getScreenWidth(context) / 2.2,
                  child: Text(
                    loremText,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: AppStylesUtil.textBoldStyle(
                      17.sp,
                      AppColorUtil.white,
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
              40.verticalSpace,
              AppButtonWidget(
                onClick: () {},
                customChild: Text(
                  AppLocalizations.of(context)!.continues,
                  style: AppStylesUtil.textRegularStyle(
                    17.sp,
                    AppColorUtil.iconsDarkGreen,
                    FontWeight.bold,
                  ),
                ),
                btnBackgroundColor: AppColorUtil.white,
                btnPadding: EdgeInsets.all(5.sp),
                btnSize: Size(302.w, 45.h),
                width: 302.w,
                height: 45.h,
                btnRadius: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
