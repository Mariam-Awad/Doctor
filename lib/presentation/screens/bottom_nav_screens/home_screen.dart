import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/home_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenResizer.getScreenHeight(context),
        width: ScreenResizer.getScreenWidth(context),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              height: ScreenResizer.getScreenHeight(context),
              width: ScreenResizer.getScreenWidth(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  image: AssetImage(
                    HomeScreenHelper.instance().backGroundImages[index],
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  300.verticalSpace,
                  Container(
                    margin: EdgeInsets.only(left: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text(
                            HomeScreenHelper.instance().onBoardingTitles[0],
                            style: AppStylesUtil.textBoldStyle(
                              20.sp,
                              HomeScreenHelper.instance()
                                  .setOnBoardingTextColor(index),
                              FontWeight.bold,
                            ),
                          ),
                        ),
                        4.verticalSpace,
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Visibility(
                                visible: HomeScreenHelper.instance()
                                    .showCircleContainer(index),
                                child: Container(
                                  height: 8.h,
                                  width: 8.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HomeScreenHelper.instance()
                                        .setCircleContainerColor(index),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 3.w),
                                width: 250.w,
                                child: Text(
                                  HomeScreenHelper.instance()
                                      .onBoardingDescription[index],
                                  textAlign: TextAlign.center,
                                  style: AppStylesUtil.textRegularStyle(
                                    13.sp,
                                    HomeScreenHelper.instance()
                                        .setOnBoardingTextColor(index),
                                    FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Container(
                    width: 270.w,
                    height: 184.h,
                    padding: EdgeInsets.all(10.sp),
                    margin: EdgeInsets.only(left: 45.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.sp),
                      color: AppColorUtil.loginContainerColor.withOpacity(0.8),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.2.sp,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButtonWidget(
                          onClick: () {},
                          customChild: Text(
                            AppLocalizations.of(context)!.book_an_appointment,
                            style: AppStylesUtil.textBoldStyle(
                              15.sp,
                              AppColorUtil.white,
                              FontWeight.bold,
                            ),
                          ),
                          btnBackgroundColor: AppColorUtil.darkGreen,
                          btnSize: Size(200.w, 45.h),
                          btnRadius: 30.sp,
                          width: 200.w,
                          height: 45.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        AppButtonWidget(
                          onClick: () {},
                          customChild: Text(
                            AppLocalizations.of(context)!.biography,
                            style: AppStylesUtil.textBoldStyle(
                              16.sp,
                              AppColorUtil.iconsDarkGreen,
                              FontWeight.bold,
                            ),
                          ),
                          btnBackgroundColor: AppColorUtil.white,
                          btnSize: Size(200.w, 40.h),
                          btnRadius: 30.sp,
                          width: 200.w,
                          height: 40.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
