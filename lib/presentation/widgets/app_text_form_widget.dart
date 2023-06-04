import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_styles_util.dart';

class AppTextFormWidget extends StatelessWidget {
  final String? label, hint, initialValue;
  final dynamic Function(String?) onChangeListener;
  final String? Function(String?) onValidateListener;
  final IconData? prefIcon;
  final TextInputType textType;
  final String? fontType;
  final double? textSize;
  final double? labelSize;
  final double? hintSize;
  final double? radius, sideWidth;
  final Color? sideColor, fillColor;
  final bool? isFiled;

  const AppTextFormWidget(
      {this.label,
      this.hint,
      required this.textType,
      this.prefIcon,
      required this.onChangeListener,
      required this.onValidateListener,
      this.initialValue,
      this.fontType,
      this.textSize,
      this.hintSize,
      this.labelSize,
      this.radius,
      required this.sideColor,
      this.sideWidth,
      this.fillColor,
      this.isFiled,
      Key? key})
      : super(key: key);
  static bool? passwordObscure = true;
  static bool? passwordVisibilty = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return SizedBox(
          //color: Colors.lightBlue,
          height: 60.h,
          child: TextFormField(
            cursorColor: AppColorUtil.darkGreen,
            initialValue: initialValue,
            onChanged: onChangeListener,
            validator: onValidateListener,
            keyboardType: textType,
            style: AppStylesUtil.textRegularStyle(
                14.sp, AppColorUtil.textblackBold, FontWeight.w400),
            decoration: InputDecoration(
              helperText: '',
              helperMaxLines: 1,
              helperStyle: AppStylesUtil.textRegularStyle(
                  8.sp, Colors.transparent, FontWeight.w400),
              filled: isFiled,
              fillColor: fillColor,
              //contentPadding: EdgeInsets.all(5.0),
              disabledBorder: _textFieldBorder(radius!, sideColor!, sideWidth!),
              enabledBorder: _textFieldBorder(radius!, sideColor!, sideWidth!),
              focusedBorder: _textFieldBorder(radius!, sideColor!, sideWidth!),
              focusedErrorBorder:
                  _textFieldBorder(radius!, sideColor!, sideWidth!),
              errorBorder: _textFieldBorder(radius!, sideColor!, sideWidth!),
              hintText: hint,
              hintStyle: AppStylesUtil.textRegularStyle(
                  hintSize!, AppColorUtil.textLightGrey, FontWeight.w400),
              labelText: label ?? "",
              labelStyle:AppStylesUtil.textRegularStyle(
                  hintSize!, AppColorUtil.textLightGrey, FontWeight.w400),
              suffixIcon: hint!.toLowerCase().contains("password")
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObscure = !passwordObscure!;
                          passwordVisibilty = !passwordVisibilty!;
                        });
                      },
                      icon: Icon(
                        passwordVisibilty!
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 20,
                        color: AppColorUtil.darkGreen,
                      ),
                    )
                  : null,
            ),
            obscureText: hint!.toLowerCase().contains("password")
                ? passwordObscure!
                : false,
            enabled: true,
          ),
        );
      },
    );
  }
}

OutlineInputBorder _textFieldBorder(
  double radius,
  Color sideColor,
  double sideWidth,
) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius),
    borderSide: BorderSide(
      color: sideColor,
      width: sideWidth,
    ),
  );
}
