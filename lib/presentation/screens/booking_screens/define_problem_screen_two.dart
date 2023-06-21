import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/define_problem_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/routes/app_navigation_manager.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/components/visit_type_card_component.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_drop_down_widget.dart';
import '../../widgets/app_text_form_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DefineProblemScreenTwo extends StatefulWidget {
  const DefineProblemScreenTwo({super.key});

  @override
  State<DefineProblemScreenTwo> createState() => _DefineProblemScreenTwoState();
}

class _DefineProblemScreenTwoState extends State<DefineProblemScreenTwo> {
  TextEditingController? problemController;
  Object? dropdownValue;

  @override
  void initState() {
    super.initState();
    problemController = TextEditingController(text: 'my problrm is ....');
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.defineProblemBackgroundImage,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 30.h, bottom: 20.h, left: 10.w, right: 10.w),
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
                              AppLocalizations.of(context)!.define_problem,
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
                      top: 130.h,
                      left: 10.w,
                      child: Text(
                        AppLocalizations.of(context)!.choose_from_below,
                        textAlign: TextAlign.left,
                        style: AppStylesUtil.textRegularStyle(
                          16.sp,
                          AppColorUtil.textDarkGrey,
                          FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160.h,
                      left: 10.w,
                      child: SizedBox(
                        width: 320.w,
                        height: 80.h,
                        child: AppDropDownWidget(
                          itemHeight: 70.h,
                          items: const [
                            DropdownMenuItem(
                              value: '1',
                              child: Text('choose one'),
                            ),
                            DropdownMenuItem(
                              value: '2',
                              child: Text('choose two'),
                            ),
                            DropdownMenuItem(
                              value: '3',
                              child: Text('choose three'),
                            ),
                          ],
                          dropDownValue: dropdownValue,
                          iconEnabledColor: AppColorUtil.textDarkGrey,
                          iconSize: 25.0,
                          dropDownFill: true,
                          dropDownFillColor: AppColorUtil.white,
                          dropDownTextStyle: AppStylesUtil.textRegularStyle(
                              14.0,
                              AppColorUtil.textblackBold,
                              FontWeight.w400)!,
                          hintText: 'choose',
                          hintStyle: AppStylesUtil.textRegularStyle(14.0,
                              AppColorUtil.textblackBold, FontWeight.w400)!,
                          dropdownColor: AppColorUtil.white,
                          side: BorderSide(
                              color: AppColorUtil.semiDarkWhite, width: 1.0),
                          radius: 12.r,
                          isDense: false,
                          onChange: (Object? value) {
                            setState(() {
                              dropdownValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 230.h,
                      left: 10.w,
                      child: Text(
                        AppLocalizations.of(context)!.whats_your_problem,
                        textAlign: TextAlign.left,
                        style: AppStylesUtil.textRegularStyle(
                          16.sp,
                          AppColorUtil.textDarkGrey,
                          FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 260.h,
                      left: 10.w,
                      child: SizedBox(
                        width: 320.w,
                        height: 100.h,
                        child: AppTextFormWidget(
                          controller: problemController,
                          hint: 'my problem is ..',
                          maxLines: 6,
                          textType: TextInputType.text,
                          onChangeListener: (value) {},
                          onValidateListener: (value) {},
                          fontType: appFontBold,
                          textSize: 12.sp,
                          hintSize: 14.sp,
                          radius: 12.sp,
                          sideColor: AppColorUtil.textLightGrey,
                          sideWidth: 1,
                          fillColor: Colors.white,
                          isFiled: true,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 140,
                        left: 10,
                        child: SizedBox(
                          height: 153.h,
                          width: 130.w,
                          child: Text(
                            AppLocalizations.of(context)!.lorem,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: AppStylesUtil.textBoldStyle(
                              20.sp,
                              AppColorUtil.white,
                              FontWeight.bold,
                            ),
                          ),
                        )),
                    Positioned(
                      bottom: 90.h,
                      left: 10.w,
                      child: SizedBox(
                        width: 302.w,
                        child: Text(
                          AppLocalizations.of(context)!.lorem,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          style: AppStylesUtil.textRegularStyle(
                            12.sp,
                            AppColorUtil.white,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30.h,
                      child: AppButtonWidget(
                        onClick: () {
                          BookingAppointmentScreenHelper.instance()
                              .navToSecondPage(9);
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
            )));
  }
}
