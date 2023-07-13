import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/components/past_canceled_visit_component.dart';
import 'package:doctor/core/components/upcoming_visit_component.dart';
import 'package:doctor/presentation/helpers/visits_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/screen_resizer.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_colors_util.dart';
import '../../../core/utils/app_styles_util.dart';
import '../../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VisitsScreen extends StatefulWidget {
  const VisitsScreen({super.key});

  @override
  State<VisitsScreen> createState() => _VisitsScreenState();
}

class _VisitsScreenState extends State<VisitsScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    VisitsScreenHelper.instance().tabController =
        TabController(vsync: this, length: 3);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        VisitsScreenHelper.instance().startAnimation0 = true;
      });
    });
  }

  @override
  void dispose() {
    VisitsScreenHelper.instance().screenDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        imageAsset: AppAssetsUtil.profileBackgroundImage,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: ScreenResizer.getScreenHeight(context),
            width: ScreenResizer.getScreenWidth(context),
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  10.verticalSpace,
                  Center(
                    child: Text(
                      AppLocalizations.of(context)!.my_visits,
                      style: AppStylesUtil.textBoldStyle(
                        20.sp,
                        AppColorUtil.textDarkGreen,
                        FontWeight.bold,
                      ),
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    width: 302.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: AppColorUtil.backgroundLightBabyBlue,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: TabBar(
                      controller: VisitsScreenHelper.instance().tabController,
                      indicator: BoxDecoration(
                        color: AppColorUtil.textDarkGreen,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      labelColor: AppColorUtil.white,
                      unselectedLabelColor: AppColorUtil.textDarkGreen,
                      onTap: (value) {
                        printDone('value $value');
                        if (value == 0) {
                          setState(() {
                            VisitsScreenHelper.instance().onValue0(value);
                            Future.delayed(const Duration(milliseconds: 1000),
                                () {
                              setState(() {
                                VisitsScreenHelper.instance().startAnimation0 =
                                    true;
                              });
                            });
                          });
                        } else if (value == 1) {
                          setState(() {
                            VisitsScreenHelper.instance().onValue1(value);
                            Future.delayed(const Duration(milliseconds: 1000),
                                () {
                              setState(() {
                                VisitsScreenHelper.instance().startAnimation1 =
                                    true;
                              });
                            });
                          });
                        } else if (value == 2) {
                          setState(() {
                            VisitsScreenHelper.instance().onValue2(value);
                            Future.delayed(const Duration(milliseconds: 1000),
                                () {
                              setState(() {
                                VisitsScreenHelper.instance().startAnimation2 =
                                    true;
                              });
                            });
                          });
                        }
                      },
                      tabs: [
                        Tab(
                          child: Text(
                            AppLocalizations.of(context)!.past_visits,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppLocalizations.of(context)!.upcoming_visits,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppLocalizations.of(context)!.canceled_visits,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    padding: const EdgeInsets.all(8.0),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return VisitsScreenHelper.instance().tabIndex == 0 ||
                              VisitsScreenHelper.instance().tabIndex == null
                          ? AnimatedContainer(
                              duration:
                                  Duration(milliseconds: 300 + (index * 400)),
                              transform: Matrix4.translationValues(
                                  VisitsScreenHelper.instance().startAnimation0
                                      ? 0 // mwgoda
                                      : MediaQuery.of(context)
                                          .size
                                          .width, // msh mwgoda
                                  0,
                                  0),
                              curve: Curves.easeInOut,
                              child: PastCanceledVisitComponent(
                                  iconAsset: AppAssetsUtil.doctorImage,
                                  doctorName: 'DR.Karim Aggour',
                                  doctorSpicialization: 'Dermatologist',
                                  status: 'Visited',
                                  statusColor: AppColorUtil.green,
                                  date: 'Monday, 11 Feb',
                                  time: '1:30 PM'),
                            )
                          : (VisitsScreenHelper.instance().tabIndex == 1
                              ? AnimatedContainer(
                                  duration: Duration(
                                      milliseconds: 300 + (index * 400)),
                                  transform: Matrix4.translationValues(
                                      VisitsScreenHelper.instance()
                                              .startAnimation1
                                          ? 0 // mwgoda
                                          : MediaQuery.of(context)
                                              .size
                                              .width, // msh mwgoda
                                      0,
                                      0),
                                  curve: Curves.easeInOut,
                                  child: const UpcomingVisitComponent(
                                    iconAsset: AppAssetsUtil.doctorImage,
                                    doctorName: 'DR.Karim Aggour',
                                    doctorSpicialization: 'Dermatologist',
                                    date: 'Monday, 11 Feb',
                                    time: '1:30 PM',
                                  ),
                                )
                              : (VisitsScreenHelper.instance().tabIndex == 2
                                  ? AnimatedContainer(
                                      duration: Duration(
                                          milliseconds: 300 + (index * 400)),
                                      transform: Matrix4.translationValues(
                                          VisitsScreenHelper.instance()
                                                  .startAnimation2
                                              ? 0 // mwgoda
                                              : MediaQuery.of(context)
                                                  .size
                                                  .width, // msh mwgoda
                                          0,
                                          0),
                                      curve: Curves.easeInOut,
                                      child: PastCanceledVisitComponent(
                                          iconAsset: AppAssetsUtil.doctorImage,
                                          doctorName: 'DR.Karim Aggour',
                                          doctorSpicialization: 'Dermatologist',
                                          status: 'Canceled',
                                          statusColor: AppColorUtil.red,
                                          date: 'Monday, 11 Feb',
                                          time: '1:30 PM'),
                                    )
                                  : Container()));
                    },
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
