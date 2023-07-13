import 'package:doctor/core/components/branch_location_component.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/helpers/branch_screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_assets_util.dart';
import '../../../core/utils/app_styles_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/background_widget.dart';

class AttachmentsScreen extends StatefulWidget {
  const AttachmentsScreen({super.key});

  @override
  State<AttachmentsScreen> createState() => _AttachmentsScreenState();
}

class _AttachmentsScreenState extends State<AttachmentsScreen> {
  bool selected = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        imageAsset: AppAssetsUtil.patientBackgroundAttachmentImage,
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
                              AppLocalizations.of(context)!.attachments,
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
                        top: 170.h,
                        right: 25.w,
                        left: 25.w,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          child: Container(
                            width: 302.w,
                            height: 40.h,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(12.r),
                                color: selected
                                    ? AppColorUtil.textDarkGreen
                                    : AppColorUtil.white),
                            child: Text(
                              'CBC',
                              textAlign: TextAlign.left,
                              style: AppStylesUtil.textBoldStyle(
                                12.sp,
                                selected
                                    ? AppColorUtil.white
                                    : AppColorUtil.visaDarkBlack,
                                FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 170.h,
                        right: 25.w,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          child: Container(
                              width: 45.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      topEnd: Radius.circular(12.r),
                                      bottomEnd: Radius.circular(12.r)),
                                  color: selected
                                      ? AppColorUtil.white
                                      : AppColorUtil.textDarkGreen),
                              child: selected
                                  ? Icon(
                                      Icons.delete,
                                      color: AppColorUtil.textDarkGreen,
                                      size: 25,
                                    )
                                  : Icon(
                                      Icons.attach_file,
                                      color: AppColorUtil.white,
                                      size: 25,
                                    )),
                        )),
                    Positioned(
                      top: 250.h,
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
                              AppLocalizations.of(context)!.add_new_attachment,
                              style: AppStylesUtil.textRegularStyle(
                                16.sp,
                                AppColorUtil.white,
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        btnBackgroundColor: AppColorUtil.textDarkGreen,
                        btnPadding: EdgeInsets.all(5.sp),
                        btnSize: Size(302.w, 40.h),
                        btnRadius: 12,
                        height: 40.h,
                        width: 302.w,
                      ),
                    ),
                    Positioned(
                        bottom: 80.h,
                        left: 30.w,
                        child: SizedBox(
                          height: 200.h,
                          width: 150.w,
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
