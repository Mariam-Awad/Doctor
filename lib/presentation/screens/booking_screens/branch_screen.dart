import 'package:doctor/core/components/branch_location_component.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/branch_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/routes/app_navigation_manager.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BranchScreen extends StatefulWidget {
  const BranchScreen({super.key});

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.chooseBranchBackgroundImage,
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
                              AppLocalizations.of(context)!.choose_branch,
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
                        AppLocalizations.of(context)!.select_branch,
                        style: AppStylesUtil.textRegularStyle(
                          16.sp,
                          AppColorUtil.visaDarkBlack,
                          FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 170.h,
                        left: 10.w,
                        child: Column(
                          children: [
                            BranchLocationComponent(
                              widthContainer: 234.w,
                              heightContainer: 64.h,
                              iconAsset: AppAssetsUtil.locationIcon,
                              textlocation:
                                  '16-El-fath Street ,Mohandsien Mit Okba ,Giza Governorate',
                              fillContainerColor:
                                  BranchScreenHelper.instance().fillColor0,
                              onTap: () {
                                setState(() {
                                  BranchScreenHelper.instance()
                                      .changeCurrentColor(0);
                                });
                              },
                            ),
                            12.verticalSpace,
                            BranchLocationComponent(
                              widthContainer: 234.w,
                              heightContainer: 64.h,
                              iconAsset: AppAssetsUtil.locationIcon,
                              textlocation:
                                  '16-El-fath Street ,Mohandsien Mit Okba ,Giza Governorate',
                              fillContainerColor:
                                  BranchScreenHelper.instance().fillColor1,
                              onTap: () {
                                setState(() {
                                  BranchScreenHelper.instance()
                                      .changeCurrentColor(1);
                                });
                              },
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 80.h,
                        left: 30.w,
                        child: SizedBox(
                          height: 200.h,
                          width: 170.w,
                          child: Text(
                            AppLocalizations.of(context)!.lorem,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 7,
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
                              .navToSecondPage(11);
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
