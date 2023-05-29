import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/bloc/Auth_bloc/auth_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
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
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
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
                  Text(
                    AppLocalizations.of(context)!.forget_password,
                    style: AppStylesUtil.textBoldStyle(
                      20.sp,
                      Colors.white,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200.h,
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
                      children: [
                        AppTextFormWidget(
                          label: AppLocalizations.of(context)!.email +
                              " / ".toString() +
                              AppLocalizations.of(context)!.mobile_number,
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
                          height: 30.h,
                        ),
                        AppButtonWidget(
                          onClick: () {
                            AuthHelper.instance()
                                .loginFun(context, "model", _formKey);
                          },
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
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
