import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 20.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppAssetsUtil.paymentBackgroundImage,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBackBtnWidget(
                onClick: () {
                  AppNavigationManager.navPop(context);
                },
                titleIsVisible: true,
                title: AppLocalizations.of(context)!.payment,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 10.h,
                ),
                child: Text(
                  AppLocalizations.of(context)!.your_information_will_be_shared,
                  style: AppStylesUtil.textBoldStyle(
                    10.sp,
                    AppColorUtil.iconsDarkGreen,
                    FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: AppButtonWidget(
                  onClick: () {},
                  customChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SvgPicture.asset(
                        AppAssetsUtil.addAltIcon,
                      ),
                      10.horizontalSpace,
                      Text(
                        AppLocalizations.of(context)!.add_new_card,
                        style: AppStylesUtil.textBoldStyle(
                          14.sp,
                          AppColorUtil.white,
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  border: BorderSide(
                    color: AppColorUtil.white,
                    width: 0.9,
                  ),
                  btnBackgroundColor: AppColorUtil.textDarkGreen,
                  btnSize: Size(double.maxFinite, 47.h),
                  btnRadius: 10.sp,
                  width: double.maxFinite,
                  height: 47.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
