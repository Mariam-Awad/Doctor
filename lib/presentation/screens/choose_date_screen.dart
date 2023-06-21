import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:doctor/core/components/time_container_component.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/choose_date_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';
import '../../core/utils/app_assets_util.dart';
import '../../core/utils/app_styles_util.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseDateScreen extends StatefulWidget {
  const ChooseDateScreen({super.key});

  @override
  State<ChooseDateScreen> createState() => _ChooseDateScreenState();
}

class _ChooseDateScreenState extends State<ChooseDateScreen> {
  final DateTime dt = DateTime.now();
  String? d2, t1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.chooseDateBackgroundImage,
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
                              AppLocalizations.of(context)!.choose_date,
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
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
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
                      top: 250.h,
                      left: 16.w,
                      child: Text(
                        AppLocalizations.of(context)!.select_time,
                        textAlign: TextAlign.left,
                        style: AppStylesUtil.textRegularStyle(
                          16.sp,
                          AppColorUtil.textblackBold,
                          FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70.h,
                      child: SizedBox(
                          height: 200.h,
                          width: 320.w,
                          child: DateTimePicker(
                            datePickerTitle: '',
                            type: DateTimePickerType.Date,
                            onDateChanged: (date) {
                              setState(() {
                                d2 = DateFormat('dd MMM, yyyy').format(date);
                              });
                            },
                          )),
                    ),
                    Positioned(
                      top: 245.0,
                      left: 16.w,
                      right: 16.w,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 2.2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: ChooseDateHelper.instance().time.length,
                        itemBuilder: (context, index) {
                          return TimeContainerComponent(
                            containerWidth: 45.w,
                            containerHeight: 28.h,
                            containerFillColor: index ==
                                    ChooseDateHelper.instance().selectedIndex
                                ? AppColorUtil.backgroundDarkBabyBlue
                                : AppColorUtil.white,
                            borderColor: index ==
                                    ChooseDateHelper.instance().selectedIndex
                                ? AppColorUtil.white
                                : AppColorUtil.backgroundDarkBabyBlue,
                            textColor: index ==
                                    ChooseDateHelper.instance().selectedIndex
                                ? AppColorUtil.white
                                : AppColorUtil.backgroundDarkBabyBlue,
                            enabled:
                                ChooseDateHelper.instance().timeFree[index],
                            timeText: ChooseDateHelper.instance().time[index],
                            onTap: ChooseDateHelper.instance().timeFree[index]
                                ? () {
                                    setState(() {
                                      ChooseDateHelper.instance()
                                          .onChangeTimeType(index);
                                    });
                                  }
                                : null,
                          );
                        },
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
                      bottom: 30.h,
                      child: AppButtonWidget(
                        onClick: () {
                          AppNavigationManager.navPush(
                            screen: AppRoutes.branchRouteName,
                            context: context,
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
