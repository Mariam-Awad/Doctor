import 'package:animated_weight_picker/animated_weight_picker.dart';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/screen_resizer.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_text_form_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  final double min = 40;
  final double max = 200;
  String selectedValue = '';
  TextEditingController? heightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedValue = min.toString();
    heightController = TextEditingController(text: selectedValue);
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
            padding: EdgeInsets.only(
                top: 30.h, bottom: 20.h, left: 10.w, right: 10.w),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssetsUtil.heightBackgroundImage,
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
                          'What Is Your Height',
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
                                .most_therapies_depend_on_it,
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
                  child: SizedBox(
                    height: 100.h,
                    width: MediaQuery.of(context).size.width,
                    child: AnimatedWeightPicker(
                      min: min,
                      max: max,
                      majorIntervalThickness: 3,
                      majorIntervalHeight: 20.0,
                      selectedValueColor: AppColorUtil.textDarkGreen,
                      dialColor: AppColorUtil.textDarkGreen,
                      dialHeight: 45.h,
                      dialThickness: 2.0,
                      suffixText: 'cm',
                      squeeze: 2.0,
                      suffixTextColor: AppColorUtil.textDarkGreen,
                      onChange: (newValue) {
                        setState(() {
                          selectedValue = newValue;
                          heightController!.text = newValue;
                          printDone(selectedValue);
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 250.h,
                  left: 10.w,
                  child: Text(
                    AppLocalizations.of(context)!.your_height,
                    style: AppStylesUtil.textRegularStyle(
                      14.sp,
                      AppColorUtil.textDarkGrey,
                      FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 285,
                  left: 20.w,
                  child: SizedBox(
                    width: 320.w,
                    height: 60.h,
                    child: AppTextFormWidget(
                      controller: heightController,
                      hint: '150 cm',
                      textType: TextInputType.number,
                      onChangeListener: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                      onValidateListener: (value) {},
                      fontType: appFontBold,
                      textSize: 12.sp,
                      hintSize: 12.sp,
                      radius: 12.sp,
                      sideColor: AppColorUtil.textLightGrey,
                      sideWidth: 1,
                      fillColor: Colors.white,
                      isFiled: true,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 100,
                    left: 30,
                    child: SizedBox(
                      height: 200.h,
                      width: 160.w,
                      child: Text(
                        AppLocalizations.of(context)!.lorem,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
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
                          .navToSecondPage(5);
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
        ));
  }
}
