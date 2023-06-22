import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/define_problem_helper.dart';
import 'package:doctor/presentation/helpers/old_screen_helper.dart';
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

class OldScreen extends StatefulWidget {
  const OldScreen({super.key});

  @override
  State<OldScreen> createState() => _OldScreenState();
}

class _OldScreenState extends State<OldScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.oldBackgroundImage,
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
                              AppLocalizations.of(context)!.how_old_are_you,
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
                      top: 170.h,
                      child: SizedBox(
                        height: 114.h,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 60,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    setState(() {
                                      OldScreenHelper.instance()
                                          .onChangeAge(index);
                                    });
                                  },
                                  child: Container(
                                    height: OldScreenHelper.instance()
                                                .selectedIndex ==
                                            index
                                        ? 114.h
                                        : 95.h,
                                    width: 70.w,
                                    padding: const EdgeInsets.all(8.0),
                                    margin: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: OldScreenHelper.instance()
                                                  .selectedIndex ==
                                              index
                                          ? AppColorUtil.backgroundDarkBabyBlue
                                          : AppColorUtil.white,
                                      border: Border.all(
                                          color: OldScreenHelper.instance()
                                                      .selectedIndex ==
                                                  index
                                              ? AppColorUtil.white
                                              : AppColorUtil
                                                  .backgroundDarkBabyBlue),
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        (22 + index).toString(),
                                        style: AppStylesUtil.textRegularStyle(
                                          30.sp,
                                          OldScreenHelper.instance()
                                                      .selectedIndex ==
                                                  index
                                              ? AppColorUtil.white
                                              : AppColorUtil.textDarkGreen,
                                          FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ));
                            }),
                      ),
                    ),
                    Positioned(
                        bottom: 100,
                        left: 10,
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
                              .navToSecondPage(7);
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
