import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/auth_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:doctor/presentation/widgets/app_text_link_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/background_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      imageAsset: AppAssetsUtil.loginBackgroundImage,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: ScreenResizer.getScreenHeight(context),
            width: ScreenResizer.getScreenWidth(context),
            padding: EdgeInsets.symmetric(
              vertical: 60.h,
              horizontal: 20.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                100.verticalSpace,
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    "Dr.KARIM\n AGGOUR",
                    style: AppStylesUtil.textBoldStyle(
                      30.sp,
                      AppColorUtil.white,
                      FontWeight.bold,
                    ),
                  ),
                ),
                4.verticalSpace,
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    "  Dermatologist",
                    textAlign: TextAlign.center,
                    style: AppStylesUtil.textRegularStyle(
                      18.sp,
                      AppColorUtil.backgroundDarkWhite,
                      FontWeight.w400,
                    ),
                  ),
                ),
                70.verticalSpace,
                Container(
                  height: 290.h,
                  width: 335.w,
                  padding:
                      EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColorUtil.loginContainerColor.withOpacity(0.6),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0.sp,
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextFormWidget(
                          hint: AppLocalizations.of(context)!.user_name,
                          textType: TextInputType.text,
                          onChangeListener: (value) {
                          },
                          onValidateListener: (value) {
                            return ValidateAuthField.instance()
                                .validateField(value!);
                          },
                          initialValue: "userName",
                          fontType: appFontRegular,
                          textSize: 12.sp,
                          hintSize: 12.sp,
                          radius: 12.r,
                          sideColor: AppColorUtil.white,
                          sideWidth: 1,
                          fillColor: AppColorUtil.white,
                          isFiled: true,
                        ),
                        AppTextFormWidget(
                          label: "Password",
                          hint: AppLocalizations.of(context)!.password,
                          textType: TextInputType.visiblePassword,
                          onChangeListener: (value) {},
                          onValidateListener: (value) {
                            return ValidateAuthField.instance()
                                .validatePassword(value!);
                          },
                          initialValue: "password",
                          fontType: appFontRegular,
                          textSize: 12.sp,
                          hintSize: 12.sp,
                          radius: 12.r,
                          sideColor: AppColorUtil.white,
                          sideWidth: 1,
                          fillColor: AppColorUtil.white,
                          isFiled: true,
                        ),
                        AppTextLinkWidget(
                          title: AppLocalizations.of(context)!.forget_password +
                              " ?".toString(),
                          style: AppStylesUtil.textBoldStyle(
                            12.sp,
                            AppColorUtil.textDarkGreen,
                            FontWeight.bold,
                          )!,
                          onClick: () {
                            AppNavigationManager.navPush(
                              screen: AppRoutes.forgetPasswordRouteName,
                              context: context,
                            );
                          },
                        ),
                        6.verticalSpace,
                        Text(
                          AppLocalizations.of(context)!.or,
                          style: AppStylesUtil.textBoldStyle(
                            16.sp,
                            AppColorUtil.textDarkGreen,
                            FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.sign_in_with,
                              style: AppStylesUtil.textBoldStyle(
                                12.sp,
                                AppColorUtil.textDarkGreen,
                                FontWeight.bold,
                              ),
                            ),
                            14.horizontalSpace,
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.appleIcon,
                                width: 20.w,
                                height: 20.h,
                                fit: BoxFit.fill,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(5.sp),
                              btnSize: Size(28.w, 28.h),
                              btnRadius: 8.r,
                              height: 30.h,
                              width: 28.w,
                            ),
                            14.horizontalSpace,
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.facebookIcon,
                                width: 20.w,
                                height: 20.h,
                                fit: BoxFit.fill,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(5.sp),
                              btnSize: Size(28.w, 28.h),
                              btnRadius: 8.r,
                              height: 30.h,
                              width: 28.w,
                            ),
                            14.horizontalSpace,
                            AppButtonWidget(
                              onClick: () {},
                              customChild: SvgPicture.asset(
                                AppAssetsUtil.googleIcon,
                                width: 20.w,
                                height: 20.h,
                                fit: BoxFit.fill,
                              ),
                              btnBackgroundColor: Colors.white,
                              btnPadding: EdgeInsets.all(0.sp),
                              btnSize: Size(28.w, 28.h),
                              btnRadius: 8.r,
                              height: 30.h,
                              width: 28.w,
                            ),
                          ],
                        ),
                        22.verticalSpace,
                        AppButtonWidget(
                          onClick: () {
                            AuthScreenHelper.instance()
                                .loginFun(context, "model", _formKey);
                          },
                          customChild: Text(
                            AppLocalizations.of(context)!.sign_in,
                            style: AppStylesUtil.textRegularStyle(
                              17.sp,
                              Colors.white,
                              FontWeight.bold,
                            ),
                          ),
                          btnBackgroundColor: AppColorUtil.textDarkGreen,
                          btnPadding: EdgeInsets.all(5.sp),
                          btnSize: Size(302.w, 50.h),
                          btnRadius: 12,
                          height: 40.h,
                          width: 302.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
