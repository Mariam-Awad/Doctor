import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/online_payment_helper.dart';
import 'package:doctor/presentation/helpers/payment_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/background_widget.dart';

class OnlinePaymentScreen extends StatefulWidget {
  const OnlinePaymentScreen({super.key});

  @override
  State<OnlinePaymentScreen> createState() => _OnlinePaymentScreenState();
}

class _OnlinePaymentScreenState extends State<OnlinePaymentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.paymentBackgroundImage,
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
                              AppLocalizations.of(context)!.payment,
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
                        top: 150.h,
                        child: SizedBox(
                          width: 330.w,
                          height: 150.h,
                          child: CarouselSlider.builder(
                              itemCount:
                                  OnlinePaymentHelper.instance().demo.length,
                              options: CarouselOptions(
                                height: 150,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.7,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                scrollDirection: Axis.horizontal,
                              ),
                              itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) {
                                return OnlinePaymentHelper.instance()
                                    .demo[itemIndex];
                              }),
                        )),
                    Positioned(
                        bottom: 170.h,
                        left: 30.w,
                        child: SizedBox(
                          height: 100.h,
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
                    Visibility(
                      visible:
                          PaymentScreenHelper.instance().showBtn ? true : false,
                      child: Positioned(
                        bottom: 80.h,
                        child: AppButtonWidget(
                          onClick: () {
                            AppNavigationManager.navPush(
                                screen: AppRoutes.addNewCardRouteName,
                                context: context);
                          },
                          customChild: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline_outlined,
                                color: AppColorUtil.white,
                                size: 25,
                              ),
                              10.horizontalSpace,
                              Text(
                                AppLocalizations.of(context)!.add_new_card,
                                style: AppStylesUtil.textRegularStyle(
                                  16.sp,
                                  AppColorUtil.white,
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          btnBackgroundColor: AppColorUtil.textDarkGreen,
                          border: BorderSide(
                            color: AppColorUtil.white,
                            width: 1.5,
                          ),
                          btnPadding: EdgeInsets.all(5.sp),
                          btnSize: Size(302.w, 40.h),
                          btnRadius: 12,
                          height: 40.h,
                          width: 302.w,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 80.h,
                      child: AppButtonWidget(
                        onClick: () {
                          AppNavigationManager.navPush(
                            screen: AppRoutes.addNewCardRouteName,
                            context: context,
                          );
                        },
                        customChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline_outlined,
                              color: AppColorUtil.white,
                              size: 25,
                            ),
                            10.horizontalSpace,
                            Text(
                              AppLocalizations.of(context)!.add_new_card,
                              style: AppStylesUtil.textRegularStyle(
                                16.sp,
                                AppColorUtil.white,
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        border:
                            BorderSide(color: AppColorUtil.white, width: 1.5),
                        btnBackgroundColor: AppColorUtil.textDarkGreen,
                        btnPadding: EdgeInsets.all(5.sp),
                        btnSize: Size(302.w, 40.h),
                        btnRadius: 12,
                        height: 40.h,
                        width: 302.w,
                      ),
                    ),
                    Positioned(
                      bottom: 30.h,
                      child: AppButtonWidget(
                        onClick: () {
                          AppNavigationManager.navPush(
                            context: context,
                            screen: AppRoutes.checkoutRouteName,
                          );
                        },
                        customChild: Text(
                          AppLocalizations.of(context)!.pay_now,
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
