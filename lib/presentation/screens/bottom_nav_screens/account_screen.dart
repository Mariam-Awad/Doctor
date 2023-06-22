import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/account_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../core/utils/app_colors_util.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenResizer.getScreenHeight(context),
        width: ScreenResizer.getScreenWidth(context),
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.profile,
                style: AppStylesUtil.textBoldStyle(
                  20.sp,
                  AppColorUtil.darkGreen,
                  FontWeight.bold,
                ),
              ),
              40.verticalSpace,
              Column(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: AppButtonWidget(
                        onClick: () {
                          AccountScreenHelper.instance()
                              .navBetweenScreens(
                                  context, index);
                        },
                        customChild: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AccountScreenHelper.instance()
                                .setBtnTitles(context)[index],
                            style: AppStylesUtil.textBoldStyle(
                              14.sp,
                              AppColorUtil.white,
                              FontWeight.normal,
                            ),
                          ),
                        ),
                        btnPadding: EdgeInsets.only(left: 30.w),
                        btnBackgroundColor: AppColorUtil.darkGreen,
                        btnSize: Size(double.maxFinite, 60.h),
                        btnRadius: 10.sp,
                        width: double.maxFinite,
                        height: 50.h,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
