import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_link_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(
            vertical: 60.h,
            horizontal: 20.w,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              image: AssetImage(
                AppAssetsUtil.loginBackgroundImage,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      AppNavigationManager.navPop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 25.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.otp,
                        style: AppStylesUtil.textBoldStyle(
                          18.sp,
                          Colors.white,
                          FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 250.h,
                        child: Text(
                          AppLocalizations.of(context)!
                              .enter_the_activation_code_that_has_been_sent_to_your_phone_number,
                          style: AppStylesUtil.textBoldStyle(
                            11.sp,
                            Colors.white,
                            FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 250.h,
                width: 335.w,
                padding: EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColorUtil.loginContainerColor.withOpacity(0.6),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.2.sp,
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      OtpTextField(
                        mainAxisAlignment: MainAxisAlignment.start,
                        fieldWidth: 50.w,
                        borderRadius: BorderRadius.circular(10.sp),
                        fillColor: AppColorUtil.white,
                        filled: true,
                        numberOfFields: 4,
                        borderColor: AppColorUtil.iconsDarkGreen,
                        enabled: true,
                        focusedBorderColor: AppColorUtil.iconsDarkGreen,
                        disabledBorderColor: AppColorUtil.white,
                        enabledBorderColor: AppColorUtil.white,
                        showFieldAsBox: true,
                        margin: EdgeInsets.only(right: 20.w),
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
                                  content:
                                      Text('Code entered is $verificationCode'),
                                );
                              });
                        }, // end onSubmit
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .a_code_has_been_sent_to_your_phone,
                        style: AppStylesUtil.textBoldStyle(
                          12.sp,
                          AppColorUtil.textSemiDarkGrey,
                          FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      AppTextLinkWidget(
                        title: AppLocalizations.of(context)!.request_code_again,
                        style: AppStylesUtil.textBoldStyle(
                          13.sp,
                          AppColorUtil.orange,
                          FontWeight.bold,
                        )!,
                        onClick: () {},
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      AppButtonWidget(
                        onClick: () {},
                        customChild: Text(
                          AppLocalizations.of(context)!.continues,
                          style: AppStylesUtil.textRegularStyle(
                            17.sp,
                            AppColorUtil.textDarkGreen,
                            FontWeight.bold,
                          ),
                        ),
                        btnBackgroundColor: AppColorUtil.white,
                        btnPadding: EdgeInsets.all(5.sp),
                        btnSize: Size(302.w, 50.h),
                        btnRadius: 12,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
