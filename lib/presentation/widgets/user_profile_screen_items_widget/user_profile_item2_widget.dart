import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/widgets/app_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class UserProfileItem2Widget extends StatelessWidget {
  const UserProfileItem2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.date_of_birth,
                style: AppStylesUtil.textBoldStyle(
                  13.sp,
                  Colors.black,
                  FontWeight.bold,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.age,
                style: AppStylesUtil.textBoldStyle(
                  13.sp,
                  Colors.black,
                  FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex:3,
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
                  sideColor: AppColorUtil.backgroundLightGreen
                      .withOpacity(0.001),
                  sideWidth: 1,
                  fillColor: AppColorUtil.backgroundLightGreen
                      .withOpacity(0.001),
                  isFiled: true,
                ),
              ),
              Expanded(
                flex: 1,
                child: AppTextFormWidget(
                  hint: "Enter your age",
                  textType: TextInputType.number,
                  onChangeListener: (value) {},
                  onValidateListener: (value) {},
                  initialValue: "Salam Maged",
                  fontType: appFontBold,
                  textSize: 10.sp,
                  hintSize: 10.sp,
                  labelSize: 10.sp,
                  radius: 0.sp,
                  sideColor: AppColorUtil.backgroundLightGreen
                      .withOpacity(0.001),
                  sideWidth: 1,
                  fillColor: AppColorUtil.backgroundLightGreen
                      .withOpacity(0.001),
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
