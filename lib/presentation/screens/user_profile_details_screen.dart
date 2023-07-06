import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/user_profile_details_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_back_btn_widget.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:doctor/presentation/widgets/user_profile_form_items_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfileDetailsScreen extends StatelessWidget {
  const UserProfileDetailsScreen({super.key});
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenResizer.getScreenHeight(context),
          width: ScreenResizer.getScreenWidth(context),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppAssetsUtil.profileBackgroundImage,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.verticalSpace,
              Expanded(
                flex: 1,
                child: AppBackBtnWidget(
                  titleStyle: AppStylesUtil.textBoldStyle(
                    18.sp,
                    AppColorUtil.textDarkGreen,
                    FontWeight.bold,
                  ),
                  onClick: () {
                    AppNavigationManager.navPop(context);
                  },
                  titleIsVisible: true,
                  title: AppLocalizations.of(context)!.user_profile,
                  iconColor: AppColorUtil.darkGreen,
                  space: 90.horizontalSpace,
                ),
              ),
              Expanded(
                flex: 8,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: List.generate(
                      4,
                      (index) {
                        return UserProfileFormItemsView(
                          containerHeight: 100.h,
                          containerBorderWidth: index == 0 ? 1.2 : 0.01,
                          containerChild:
                              UserProfileDetailsScreenHelper.instance()
                                  .setContainerChildes()[index],
                        );
                      },
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 12.h,
                  ),
                  child: AppButtonWidget(
                    onClick: () {},
                    customChild: Text(
                      AppLocalizations.of(context)!.edit,
                      style: AppStylesUtil.textBoldStyle(
                        16.sp,
                        AppColorUtil.textDarkGreen,
                        FontWeight.bold,
                      ),
                    ),
                    btnBackgroundColor: AppColorUtil.white,
                    btnSize: Size(double.maxFinite, 40.h),
                    btnRadius: 12.sp,
                    width: double.maxFinite,
                    height: 40.h,
                  ),
                ),
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
