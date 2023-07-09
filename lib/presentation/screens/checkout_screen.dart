import 'package:doctor/presentation/helpers/checkout_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';
import '../../core/components/checkout_total_amount.dart';
import '../../core/utils/app_assets_util.dart';
import '../../core/utils/app_colors_util.dart';
import '../../core/utils/app_styles_util.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/background_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        CheckoutScreenHelper.instance().checkoutanimation = true;
      });
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      CheckoutScreenHelper.instance().checkoutanimation = false;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.patientBackgroundCheckOutImage,
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
                              AppLocalizations.of(context)!.checkout,
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
                      left: 30.w,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        transform: Matrix4.translationValues(
                            CheckoutScreenHelper.instance().checkoutanimation
                                ? 0 // mwgoda
                                : -MediaQuery.of(context)
                                    .size
                                    .width, // msh mwgoda
                            0,
                            0),
                        curve: Curves.easeInOut,
                        child: CheckoutTotalAmount(
                          widthContainer: 303.w,
                          heightContainer: 163.h,
                          colorContainer: AppColorUtil.textDarkGreen,
                          feeAmount: 2000.0,
                          chargesAmount: 500.0,
                          discountAmount: 200.0,
                          totalAmount: 2300.0,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 80.h,
                        left: 30.w,
                        child: SizedBox(
                          height: 200.h,
                          width: 140.w,
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
                          AppNavigationManager.navPush(
                            screen: AppRoutes.reviewInfoRouteName,
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
