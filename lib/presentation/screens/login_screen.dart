import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/bloc/Auth_bloc/auth_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:doctor/presentation/widgets/app_text_link_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150.h,
              ),
              SizedBox(
                width: 200.w,
                child: Text(
                  "Dr.KARIM AGGOUR",
                  style: AppStylesUtil.textBoldStyle(
                    30.sp,
                    Colors.white,
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: Text(
                  "Dermatologist",
                  style: AppStylesUtil.textRegularStyle(
                    16.sp,
                    Colors.white,
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 360.h,
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
                  key: AuthHelper.instance().formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextFormWidget(
                        label: AppLocalizations.of(context)!.user_name,
                        hint: AppLocalizations.of(context)!.user_name,
                        textType: TextInputType.text,
                        onChangeListener: (value) {},
                        onValidateListener: (value) {
                          return ValidateAuthField.instance()
                              .validateField(value!);
                        },
                        initialValue: "",
                        fontType: appFontBold,
                        textSize: 12.sp,
                        hintSize: 10.sp,
                        labelSize: 10.sp,
                        radius: 12.sp,
                        sideColor: Colors.white,
                        sideWidth: 1,
                        fillColor: Colors.white,
                        isFiled: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppTextFormWidget(
                        label: AppLocalizations.of(context)!.password,
                        hint: AppLocalizations.of(context)!.password,
                        textType: TextInputType.visiblePassword,
                        onChangeListener: (value) {},
                        onValidateListener: (value) {
                          return ValidateAuthField.instance()
                              .validatePassword(value!);
                        },
                        initialValue: "",
                        fontType: appFontBold,
                        textSize: 12.sp,
                        hintSize: 10.sp,
                        labelSize: 10.sp,
                        radius: 12.sp,
                        sideColor: Colors.white,
                        sideWidth: 1,
                        fillColor: Colors.white,
                        isFiled: true,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      AppTextLinkWidget(
                        title: AppLocalizations.of(context)!.forget_password +
                            " ?".toString(),
                        style: AppStylesUtil.textBoldStyle(
                          12.sp,
                          AppColorUtil.darkGreen,
                          FontWeight.normal,
                        )!,
                        onClick: () {
                          AuthHelper.instance().navToForgetPasswordScreen(context);
                        },
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.or,
                        style: AppStylesUtil.textBoldStyle(
                          17.sp,
                          AppColorUtil.darkGreen,
                          FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.sign_in_with,
                              style: AppStylesUtil.textBoldStyle(
                                14.sp,
                                AppColorUtil.darkGreen,
                                FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.appleIcon,
                                width: 50.w,
                                height: 50.h,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(5.sp),
                              btnSize: Size(10.w, 10.h),
                              btnRadius: 12,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.facebookIcon,
                                width: 50.w,
                                height: 50.h,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(5.sp),
                              btnSize: Size(10.w, 10.h),
                              btnRadius: 12,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.googleIcon,
                                width: 50.w,
                                height: 50.h,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(5.sp),
                              btnSize: Size(10.w, 10.h),
                              btnRadius: 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppButtonWidget(
                        onClick: () {
                          AuthHelper.instance().loginFun(context, "model");
                        },
                        customChild: Text(
                          AppLocalizations.of(context)!.sign_in,
                          style: AppStylesUtil.textRegularStyle(
                            17.sp,
                            Colors.white,
                            FontWeight.bold,
                          ),
                        ),
                        btnBackgroundColor: AppColorUtil.darkGreen,
                        btnPadding: EdgeInsets.all(5.sp),
                        btnSize: Size(302.w, 50.h),
                        btnRadius: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
