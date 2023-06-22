import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/components/past_canceled_visit_component.dart';
import 'package:doctor/core/components/upcoming_visit_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/screen_resizer.dart';
import '../../core/utils/app_assets_util.dart';
import '../../core/utils/app_colors_util.dart';
import '../../core/utils/app_styles_util.dart';
import '../widgets/background_widget.dart';

class MyVisitsScreen extends StatefulWidget {
  const MyVisitsScreen({super.key});

  @override
  State<MyVisitsScreen> createState() => _MyVisitsScreenState();
}

class _MyVisitsScreenState extends State<MyVisitsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int? _tabIndex;
  bool startAnimation0 = false;
  bool startAnimation1 = false;
  bool startAnimation2 = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation0 = true;
      });
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Background(
        imageAsset: AppAssetsUtil.profileBackgroundImage,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
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
                    Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            //AppNavigationManager.navPop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 25.sp,
                            color: AppColorUtil.textDarkGreen,
                          ),
                        )),
                    Center(
                      child: Text(
                        'My Visits',
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
                        controller: _tabController,
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
                              _tabIndex = value;
                              startAnimation1 = false;
                              startAnimation2 = false;
                              Future.delayed(const Duration(milliseconds: 1000),
                                  () {
                                setState(() {
                                  startAnimation0 = true;
                                });
                              });
                            });
                          } else if (value == 1) {
                            setState(() {
                              _tabIndex = value;
                              startAnimation0 = false;
                              startAnimation2 = false;
                              Future.delayed(const Duration(milliseconds: 1000),
                                  () {
                                setState(() {
                                  startAnimation1 = true;
                                });
                              });
                              //
                            });
                          } else if (value == 2) {
                            setState(() {
                              _tabIndex = value;
                              startAnimation1 = false;
                              startAnimation0 = false;
                              Future.delayed(const Duration(milliseconds: 1000),
                                  () {
                                setState(() {
                                  startAnimation2 = true;
                                });
                              });
                            });
                          }
                        },
                        tabs: [
                          Tab(
                            child: Text(
                              'Past Visits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Upcoming Visits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Canceled Visits',
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
                    10.verticalSpace,
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16.0),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return _tabIndex == 0 || _tabIndex == null
                            ? AnimatedContainer(
                                duration:
                                    Duration(milliseconds: 300 + (index * 400)),
                                transform: Matrix4.translationValues(
                                    startAnimation0
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
                            : (_tabIndex == 1
                                ? AnimatedContainer(
                                    duration: Duration(
                                        milliseconds: 300 + (index * 400)),
                                    transform: Matrix4.translationValues(
                                        startAnimation1
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
                                : (_tabIndex == 2
                                    ? AnimatedContainer(
                                        duration: Duration(
                                            milliseconds: 300 + (index * 400)),
                                        transform: Matrix4.translationValues(
                                            startAnimation2
                                                ? 0 // mwgoda
                                                : MediaQuery.of(context)
                                                    .size
                                                    .width, // msh mwgoda
                                            0,
                                            0),
                                        curve: Curves.easeInOut,
                                        child: PastCanceledVisitComponent(
                                            iconAsset:
                                                AppAssetsUtil.doctorImage,
                                            doctorName: 'DR.Karim Aggour',
                                            doctorSpicialization:
                                                'Dermatologist',
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
      ),
    );
  }
}
