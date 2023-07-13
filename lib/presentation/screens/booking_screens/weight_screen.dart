import 'package:animated_weight_picker/animated_weight_picker.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/weight_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/routes/app_navigation_manager.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/components/weight_component.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final double min = 40;
  final double max = 150;
  String selectedValue = '';

  @override
  void initState() {
    super.initState();
    selectedValue = min.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.weightBackgroundImage,
        child: Scaffold(
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
                          BookingAppointmentScreenHelper.instance()
                              .navBackPage();
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
                              AppLocalizations.of(context)!.what_is_your_weight,
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
                        top: 100.h,
                        child: Row(
                          children: [
                            WeightComponent(
                              widthContainer: 70.w,
                              heightContainer: 46.h,
                              title: 'Kg',
                              pressedBackgroundContainerColor:
                                  WeightScreenHelper.instance()
                                      .backgroundColor0,
                              pressedTitleColor:
                                  WeightScreenHelper.instance().textColor0,
                              onTap: () {
                                setState(() {
                                  WeightScreenHelper.instance()
                                      .changeCurrentColor(0);
                                });
                              },
                            ),
                            10.horizontalSpace,
                            WeightComponent(
                              widthContainer: 70.w,
                              heightContainer: 46.h,
                              title: 'Lbs',
                              pressedBackgroundContainerColor:
                                  WeightScreenHelper.instance()
                                      .backgroundColor1,
                              pressedTitleColor:
                                  WeightScreenHelper.instance().textColor1,
                              onTap: () {
                                setState(() {
                                  WeightScreenHelper.instance()
                                      .changeCurrentColor(1);
                                });
                              },
                            ),
                          ],
                        )),
                    Positioned(
                      top: 180.h,
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
                          suffixText: WeightScreenHelper.instance().suffixText,
                          squeeze: 2.0,
                          suffixTextColor: AppColorUtil.textDarkGreen,
                          onChange: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 100,
                        left: 30.w,
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
                              .navToSecondPage(4);
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
