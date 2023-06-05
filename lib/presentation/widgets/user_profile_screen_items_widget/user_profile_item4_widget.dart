
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/presentation/widgets/app_profile_image_widget.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class UserProfileItem4Widget extends StatelessWidget {
  const UserProfileItem4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppProfileImageWidget(
          image: AppAssetsUtil.profileImage,
          radius: 28.sp,
        ),
        10.horizontalSpace,
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              25.verticalSpace,
              Expanded(
                child: AppTextFormWidget(
                  hint: "Enter your name",
                  textType: TextInputType.text,
                  onChangeListener: (value) {},
                  onValidateListener: (value) {},
                  initialValue: "Salam Maged",
                  fontType: appFontBold,
                  textSize: 10.sp,
                  hintSize: 10.sp,
                  labelSize: 10.sp,
                  radius: 0.sp,
                  sideColor: AppColorUtil.white,
                  sideWidth: 1,
                  fillColor: AppColorUtil.white,
                  isFiled: true,
                ),
              ),
              Expanded(
                child: AppTextFormWidget(
                  hint: "Enter your gender",
                  textType: TextInputType.text,
                  onChangeListener: (value) {},
                  onValidateListener: (value) {},
                  initialValue: "Male",
                  fontType: appFontBold,
                  textSize: 10.sp,
                  hintSize: 10.sp,
                  labelSize: 10.sp,
                  radius: 0.sp,
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
    );
  }
}
