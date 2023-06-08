import 'package:doctor/core/components/identity_verification_done_card.dart';
import 'package:doctor/core/components/identity_verification_selfie_card.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/routes/app_navigation_manager.dart';
import '../../core/utils/app_assets_util.dart';
import '../../core/utils/app_styles_util.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/background_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VerifyIdentityScreen extends StatefulWidget {
  const VerifyIdentityScreen({super.key});

  @override
  State<VerifyIdentityScreen> createState() => _VerifyIdentityScreenState();
}

class _VerifyIdentityScreenState extends State<VerifyIdentityScreen> {
  bool checkanimation = false;
  bool selfieanimation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        checkanimation = true;
        selfieanimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.verifyIdentityBackgroundImage,
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
                              AppLocalizations.of(context)!.verify_identity,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            transform: Matrix4.translationValues(
                                checkanimation
                                    ? 0 // mwgoda
                                    : -MediaQuery.of(context)
                                        .size
                                        .width, // msh mwgoda
                                0,
                                0),
                            curve: Curves.easeInOut,
                            child: IdentityVerificationDoneCard(
                                widthContainer: 146.w,
                                heightContainer: 175.h,
                                iconAsset: AppAssetsUtil.checkCircleFillIcon,
                                title: 'Identity Verification',
                                descreption: 'Your data has been saved'),
                          ),
                          10.horizontalSpace,
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            transform: Matrix4.translationValues(
                                selfieanimation
                                    ? 0 // mwgoda
                                    : MediaQuery.of(context)
                                        .size
                                        .width, // msh mwgoda
                                0,
                                0),
                            curve: Curves.easeInOut,
                            child: IdentityVerificationSelfieCard(
                                widthContainer: 140.w,
                                heightContainer: 170.h,
                                iconAsset: AppAssetsUtil.selfieIcon,
                                title: 'Selfie Photo',
                                descreption:
                                    'Its Required by our system to verify your identity'),
                          )
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
                      bottom: 30.h,
                      child: AppButtonWidget(
                        onClick: () {
                          // todo
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
