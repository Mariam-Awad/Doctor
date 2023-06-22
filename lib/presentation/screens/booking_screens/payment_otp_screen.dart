import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
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
              AppAssetsUtil.chooseBranchBackgroundImage,
            ),
            fit: BoxFit.fill,
          )),
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
                        AppLocalizations.of(context)!.otp,
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
                              .enter_the_activation_code_that_has_been_sent_to_your_phone_number,
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
                top: 160.h,
                child: OtpTextField(
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
              ),
              Positioned(
                top: 250.h,
                child: Text(
                  AppLocalizations.of(context)!
                      .a_code_has_been_sent_to_your_phone,
                  style: AppStylesUtil.textBoldStyle(
                    12.sp,
                    AppColorUtil.textSemiDarkGrey,
                    FontWeight.normal,
                  ),
                ),
              ),
              Positioned(
                top: 270.h,
                child: AppTextLinkWidget(
                  title: AppLocalizations.of(context)!.request_code_again,
                  style: AppStylesUtil.textBoldStyle(
                    13.sp,
                    AppColorUtil.orange,
                    FontWeight.bold,
                  )!,
                  onClick: () {},
                ),
              ),
              Positioned(
                  bottom: 120,
                  left: 10,
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
                  )),
              Positioned(
                bottom: 30.h,
                child: AppButtonWidget(
                  onClick: () {
                    BookingAppointmentScreenHelper.instance()
                        .navToSecondPage(12);
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
