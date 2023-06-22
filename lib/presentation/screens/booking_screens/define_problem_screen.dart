import 'package:doctor/core/components/identity_verification_done_card.dart';
import 'package:doctor/core/components/identity_verification_selfie_card.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/define_problem_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/routes/app_navigation_manager.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/components/visit_type_card_component.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DefineProblemScreen extends StatefulWidget {
  const DefineProblemScreen({super.key});

  @override
  State<DefineProblemScreen> createState() => _DefineProblemScreenState();
}

class _DefineProblemScreenState extends State<DefineProblemScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.defineProblemBackgroundImage,
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
                      top: 140.h,
                      left: 30.w,
                      child: Text(
                        AppLocalizations.of(context)!.visit_type,
                        textAlign: TextAlign.left,
                        style: AppStylesUtil.textRegularStyle(
                          16.sp,
                          AppColorUtil.textblackBold,
                          FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          VisitTypeCardComponent(
                            widthContainer: 146.w,
                            heightContainer: 146.h,
                            iconAsset: AppAssetsUtil.typeVisit1Icon,
                            typetitle: AppLocalizations.of(context)!
                                .medical_examination,
                            color: DefineProblemHelper.instance().borderColor0,
                            onTap: () {
                              setState(() {
                                DefineProblemHelper.instance()
                                    .changeCurrentColor(0);
                              });
                            },
                          ),
                          10.horizontalSpace,
                          VisitTypeCardComponent(
                            widthContainer: 146.w,
                            heightContainer: 146.h,
                            iconAsset: AppAssetsUtil.typeVisit2Icon,
                            typetitle: AppLocalizations.of(context)!
                                .medical_consultation,
                            color: DefineProblemHelper.instance().borderColor1,
                            onTap: () {
                              setState(() {
                                DefineProblemHelper.instance()
                                    .changeCurrentColor(1);
                              });
                            },
                          ),
                        ],
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
                          BookingAppointmentScreenHelper.instance().navToSecondPage(8);
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
