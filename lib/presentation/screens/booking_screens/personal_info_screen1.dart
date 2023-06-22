import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/config/validate_auth_field.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/routes/app_navigation_manager.dart';

class PersonalInfoScreen1 extends StatefulWidget {
  const PersonalInfoScreen1({super.key});

  @override
  State<PersonalInfoScreen1> createState() => _PersonalInfoScreen1State();
}

class _PersonalInfoScreen1State extends State<PersonalInfoScreen1> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        BookingAppointmentScreenHelper.instance().personalformanimation = true;
      });
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      BookingAppointmentScreenHelper.instance().personalformanimation = false;
    });
    super.didChangeDependencies();
  }

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
                    AppNavigationManager.navPop(context);
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
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  transform: Matrix4.translationValues(
                      BookingAppointmentScreenHelper.instance()
                              .personalformanimation
                          ? 0 // mwgoda
                          : -MediaQuery.of(context).size.width, // msh mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  child: Form(
                    key: BookingAppointmentScreenHelper.instance()
                        .formKeyScreen1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.full_name,
                          style: AppStylesUtil.textBoldStyle(
                            16.sp,
                            AppColorUtil.visaDarkBlack,
                            FontWeight.w400,
                          ),
                        ),
                        10.verticalSpace,
                        AppTextFormWidget(
                          hint: "Enter your full name",
                          textFormFieldWidth: 300.w,
                          textType: TextInputType.text,
                          onChangeListener: (value) {},
                          onValidateListener: (value) {
                            return ValidateAuthField.instance()
                                .validateField(value!);
                          },
                          sideColor: AppColorUtil.shadowGrey,
                          radius: 10.sp,
                          sideWidth: 1.0,
                          initialValue: "",
                          fillColor: AppColorUtil.white,
                          isFiled: true,
                          fontType: appFontBold,
                          hintSize: 12.sp,
                          textSize: 12.sp,
                          label: "Enter your full name",
                          labelSize: 20.sp,
                        ),
                        10.verticalSpace,
                        Text(
                          AppLocalizations.of(context)!.telephone,
                          style: AppStylesUtil.textBoldStyle(
                            16.sp,
                            AppColorUtil.visaDarkBlack,
                            FontWeight.w400,
                          ),
                        ),
                        10.verticalSpace,
                        AppTextFormWidget(
                          hint: "Enter your phone number",
                          textFormFieldWidth: 300.w,
                          textType: TextInputType.number,
                          onChangeListener: (value) {},
                          onValidateListener: (value) {
                            return ValidateAuthField.instance()
                                .validatePhoneNumber(value!);
                          },
                          sideColor: AppColorUtil.shadowGrey,
                          radius: 10.sp,
                          sideWidth: 1.0,
                          initialValue: "",
                          fillColor: AppColorUtil.white,
                          isFiled: true,
                          fontType: appFontBold,
                          hintSize: 12.sp,
                          textSize: 12.sp,
                          label: "+20 1111077944",
                          labelSize: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 110,
                  left: 10,
                  child: SizedBox(
                    height: 153.h,
                    width: 130.w,
                    child: Text(
                      AppLocalizations.of(context)!.lorem,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 9,
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
                        .navToSecondPage(1);
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
