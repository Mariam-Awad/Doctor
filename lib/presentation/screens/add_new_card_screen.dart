import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:doctor/presentation/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

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
                    top: 40.h, bottom: 20.h, left: 10.w, right: 10.w),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      top: 40.h,
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
                              AppLocalizations.of(context)!.add_new_card,
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
                        top: 120.h,
                        child: SizedBox(
                          width: 330.w,
                          child: Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.name_on_card,
                                  style: AppStylesUtil.textBoldStyle(
                                    13.sp,
                                    Colors.black,
                                    FontWeight.w500,
                                  ),
                                ),
                                5.verticalSpace,
                                AppTextFormWidget(
                                  hint: AppLocalizations.of(context)!.payment,
                                  textType: TextInputType.text,
                                  onChangeListener: (value) {},
                                  onValidateListener: (value) {},
                                  initialValue: "Samar Maged",
                                  fontType: appFontRegular,
                                  textSize: 12.sp,
                                  hintSize: 12.sp,
                                  radius: 12.r,
                                  sideColor: AppColorUtil.white,
                                  sideWidth: 1,
                                  fillColor: AppColorUtil.white,
                                  isFiled: true,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.number_on_card,
                                  style: AppStylesUtil.textBoldStyle(
                                    13.sp,
                                    Colors.black,
                                    FontWeight.w500,
                                  ),
                                ),
                                5.verticalSpace,
                                AppTextFormWidget(
                                  hint: AppLocalizations.of(context)!
                                      .number_on_card,
                                  textType: TextInputType.number,
                                  onChangeListener: (value) {},
                                  onValidateListener: (value) {},
                                  initialValue: "xxx xxx xxx xx34",
                                  fontType: appFontRegular,
                                  textSize: 10.sp,
                                  hintSize: 10.sp,
                                  radius: 12.r,
                                  sideColor: AppColorUtil.white,
                                  sideWidth: 1,
                                  fillColor: AppColorUtil.white,
                                  isFiled: true,
                                  prefIcon: Icons.all_inclusive_sharp,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.cvv,
                                      style: AppStylesUtil.textBoldStyle(
                                        13.sp,
                                        Colors.black,
                                        FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.expiry_date,
                                      style: AppStylesUtil.textBoldStyle(
                                        13.sp,
                                        Colors.black,
                                        FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: AppTextFormWidget(
                                          hint: AppLocalizations.of(context)!
                                              .number_on_card,
                                          textType: TextInputType.number,
                                          onChangeListener: (value) {},
                                          onValidateListener: (value) {},
                                          initialValue: "",
                                          fontType: appFontRegular,
                                          textSize: 10.sp,
                                          hintSize: 10.sp,
                                          radius: 12.r,
                                          sideColor: AppColorUtil.white,
                                          sideWidth: 1,
                                          fillColor: AppColorUtil.white,
                                          isFiled: true,
                                        ),
                                      ),
                                      10.horizontalSpace,
                                      Expanded(
                                        child: AppTextFormWidget(
                                          hint: AppLocalizations.of(context)!
                                              .number_on_card,
                                          textType: TextInputType.number,
                                          onChangeListener: (value) {},
                                          onValidateListener: (value) {},
                                          initialValue: "",
                                          fontType: appFontRegular,
                                          textSize: 10.sp,
                                          hintSize: 10.sp,
                                          radius: 12.r,
                                          sideColor: AppColorUtil.white,
                                          sideWidth: 1,
                                          fillColor: AppColorUtil.white,
                                          isFiled: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                    Positioned(
                      bottom: 30.h,
                      child: AppButtonWidget(
                        onClick: () {
                          AppNavigationManager.navPop(context);
                        },
                        customChild: Text(
                          AppLocalizations.of(context)!.add,
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
