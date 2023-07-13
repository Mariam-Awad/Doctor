import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssetsUtil.paymentBackgroundImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: 40.h, bottom: 20.h, left: 20.w, right: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      30.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
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
                          const Spacer(),
                          Text(
                            AppLocalizations.of(context)!.add_new_card,
                            textAlign: TextAlign.center,
                            style: AppStylesUtil.textBoldStyle(
                              20.sp,
                              AppColorUtil.textDarkGreen,
                              FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                    ],
                  ),
                ),
                15.verticalSpace,
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    primary: true,
                    scrollDirection: Axis.vertical,
                    child: Container(
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
                              sideColor: AppColorUtil.shadowLocationColor,
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
                              hint:
                                  AppLocalizations.of(context)!.number_on_card,
                              textType: TextInputType.number,
                              onChangeListener: (value) {},
                              onValidateListener: (value) {},
                              initialValue: "xxx xxx xxx xx34",
                              fontType: appFontRegular,
                              textSize: 10.sp,
                              hintSize: 10.sp,
                              radius: 12.r,
                              sideColor: AppColorUtil.shadowLocationColor,
                              sideWidth: 1,
                              fillColor: AppColorUtil.white,
                              isFiled: true,
                              prefIcon: SvgPicture.asset(
                                AppAssetsUtil.scanIcon,
                                height: 10.h,
                                width: 10.w,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    AppLocalizations.of(context)!.cvv,
                                    style: AppStylesUtil.textBoldStyle(
                                      13.sp,
                                      Colors.black,
                                      FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    AppLocalizations.of(context)!.expiry_date,
                                    style: AppStylesUtil.textBoldStyle(
                                      13.sp,
                                      Colors.black,
                                      FontWeight.w500,
                                    ),
                                  ),
                                ),
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
                                      initialValue: "...",
                                      fontType: appFontRegular,
                                      textSize: 10.sp,
                                      hintSize: 10.sp,
                                      radius: 12.r,
                                      sideColor:
                                          AppColorUtil.shadowLocationColor,
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
                                      initialValue: "MM/YY",
                                      fontType: appFontRegular,
                                      textSize: 10.sp,
                                      hintSize: 10.sp,
                                      radius: 12.r,
                                      sideColor:
                                          AppColorUtil.shadowLocationColor,
                                      sideWidth: 1,
                                      fillColor: AppColorUtil.white,
                                      isFiled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Row(
                                children: [
                                  StatefulBuilder(
                                    builder: (context, setCheckBoxState) {
                                      return Transform.scale(
                                        scale: 1.3,
                                        child: Checkbox(
                                          side: BorderSide(
                                            color: Colors.black,
                                            width: 1.1.sp,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2.sp),
                                          ),
                                          checkColor: AppColorUtil.darkGreen,
                                          fillColor: MaterialStateProperty.all(
                                            Colors.white,
                                          ),
                                          value: BookingAppointmentScreenHelper
                                                  .instance()
                                              .agreeSaveCard,
                                          onChanged: (value) {
                                            setCheckBoxState(
                                              () {
                                                BookingAppointmentScreenHelper
                                                        .instance()
                                                    .agreeSaveCard = value!;
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  10.horizontalSpace,
                                  Text(
                                    AppLocalizations.of(context)!
                                        .agree_save_card,
                                    style: AppStylesUtil.textBoldStyle(
                                      15.sp,
                                      AppColorUtil.darkGreen,
                                      FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                20.verticalSpace,
                Expanded(
                  flex: 4,
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 20.w, top: 50.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
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
                      ],
                    ),
                  ),
                ),
                20.verticalSpace,
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    alignment: Alignment.center,
                    child: AppButtonWidget(
                      onClick: () {
                        AppNavigationManager.navPop(
                          context,
                        );
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
                      btnSize: Size(302.w, 45.h),
                      btnRadius: 12,
                      height: 45.h,
                      width: 302.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}