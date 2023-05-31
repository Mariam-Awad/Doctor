import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:doctor/presentation/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        imageAsset: AppAssetsUtil.loginBackgroundImage,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: ScreenResizer.getScreenHeight(context),
              width: ScreenResizer.getScreenWidth(context),
              padding: EdgeInsets.symmetric(
                vertical: 50.h,
                horizontal: 20.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          AppNavigationManager.navPop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 25.sp,
                          color: Colors.white,
                        ),
                      )),
                  Center(
                    child: Text(
                      AppLocalizations.of(context)!.forget_password,
                      style: AppStylesUtil.textBoldStyle(
                        20.sp,
                        AppColorUtil.white,
                        FontWeight.bold,
                      ),
                    ),
                  ),
                  200.verticalSpace,
                  Container(
                    height: 180.h,
                    width: 335.w,
                    padding: EdgeInsets.all(15.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColorUtil.loginContainerColor.withOpacity(0.6),
                      border: Border.all(
                        color: AppColorUtil.white,
                        width: 1.sp,
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppTextFormWidget(
                            hint: AppLocalizations.of(context)!.email +
                                " / ".toString() +
                                AppLocalizations.of(context)!.mobile_number,
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
                          AppButtonWidget(
                            onClick: () {
                              AppNavigationManager.navPush(
                                context: context,
                                screen: AppRoutes.otpRouteName,
                              );
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
                            btnRadius: 12.r,
                            height: 40.h,
                            width: 302.w,
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
        ),
      ),
    );
  }
}
