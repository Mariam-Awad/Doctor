import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../helpers/blood_screen_helper.dart';
import '../../helpers/booking_appointment_screen_helper.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BloodScreen extends StatefulWidget {
  const BloodScreen({super.key});

  @override
  State<BloodScreen> createState() => _BloodScreenState();
}

class _BloodScreenState extends State<BloodScreen> {
  final double min = 40;
  final double max = 200;
  String selectedValue = '';
  TextEditingController? heightController;
  @override
  void initState() {
    super.initState();
    selectedValue = min.toString();
    heightController = TextEditingController(text: selectedValue);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        BloodScreenHelper.instance().bloodWidget1animation = true;
        BloodScreenHelper.instance().bloodWidget2animation = true;
      });
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      BloodScreenHelper.instance().bloodWidget1animation = false;
      BloodScreenHelper.instance().bloodWidget2animation = false;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.bloodBackgroundImage,
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
                              AppLocalizations.of(context)!
                                  .what_is_your_blood_type,
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
                      top: 75.h,
                      child: Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            transform: Matrix4.translationValues(
                                BloodScreenHelper.instance()
                                        .bloodWidget1animation
                                    ? 0 // mwgoda
                                    : -MediaQuery.of(context)
                                        .size
                                        .width, // msh mwgoda
                                0,
                                0),
                            curve: Curves.easeInOut,
                            child: SizedBox(
                              height: 300.h,
                              width: 151.w,
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: () {
                                          setState(() {
                                            BloodScreenHelper.instance()
                                                .onChangeBloodType(index);
                                          });
                                        },
                                        child: Container(
                                          height: 52.h,
                                          width: 140.w,
                                          padding: const EdgeInsets.all(8.0),
                                          margin: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color: BloodScreenHelper.instance()
                                                        .selectedIndex ==
                                                    index
                                                ? AppColorUtil
                                                    .backgroundDarkBabyBlue
                                                : AppColorUtil.white,
                                            border: Border.all(
                                                color: BloodScreenHelper
                                                                .instance()
                                                            .selectedIndex ==
                                                        index
                                                    ? AppColorUtil.white
                                                    : AppColorUtil
                                                        .backgroundDarkBabyBlue),
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              BloodScreenHelper.instance()
                                                  .bloodWidget1[index],
                                              style: AppStylesUtil
                                                  .textRegularStyle(
                                                20.sp,
                                                BloodScreenHelper.instance()
                                                            .selectedIndex ==
                                                        index
                                                    ? AppColorUtil.white
                                                    : AppColorUtil
                                                        .textDarkGreen,
                                                FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ));
                                  }),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            transform: Matrix4.translationValues(
                                BloodScreenHelper.instance()
                                        .bloodWidget2animation
                                    ? 0 // mwgoda
                                    : MediaQuery.of(context)
                                        .size
                                        .width, // msh mwgoda
                                0,
                                0),
                            curve: Curves.easeInOut,
                            child: SizedBox(
                              height: 300.h,
                              width: 151.w,
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: () {
                                          setState(() {
                                            BloodScreenHelper.instance()
                                                .onChangeBloodType(index + 4);
                                          });
                                        },
                                        child: Container(
                                          height: 52.h,
                                          width: 140.w,
                                          padding: const EdgeInsets.all(8.0),
                                          margin: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color: BloodScreenHelper.instance()
                                                        .selectedIndex ==
                                                    index + 4
                                                ? AppColorUtil
                                                    .backgroundDarkBabyBlue
                                                : AppColorUtil.white,
                                            border: Border.all(
                                                color: BloodScreenHelper
                                                                .instance()
                                                            .selectedIndex ==
                                                        index + 4
                                                    ? AppColorUtil.white
                                                    : AppColorUtil
                                                        .backgroundDarkBabyBlue),
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              BloodScreenHelper.instance()
                                                  .bloodWidget2[index],
                                              style: AppStylesUtil
                                                  .textRegularStyle(
                                                20.sp,
                                                BloodScreenHelper.instance()
                                                            .selectedIndex ==
                                                        index + 4
                                                    ? AppColorUtil.white
                                                    : AppColorUtil
                                                        .textDarkGreen,
                                                FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ));
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 80.h,
                        left: 10.w,
                        child: SizedBox(
                          height: 200.h,
                          width: 180.w,
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
                              .navToSecondPage(6);
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
