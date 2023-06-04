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
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 20.w),
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
              AppBackBtnWidget(
                onClick: () {
                  AppNavigationManager.navPop(context);
                },
                titleIsVisible: true,
                title: AppLocalizations.of(context)!.user_profile,
              ),
              30.verticalSpace,
              Form(
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
                                .setContainerChildes(context)[index],
                      );
                    },
                  ),
                ),
              ),
              110.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
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
                  btnSize: Size(double.maxFinite, 50.h),
                  btnRadius: 10.sp,
                  width: double.maxFinite,
                  height: 50.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


