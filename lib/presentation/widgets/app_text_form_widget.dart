import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  final String label, hint, initialValue;
  final dynamic Function(String?) onChangeListener;
  final String? Function(String?) onValidateListener;
  final IconData prefIcon;
  final TextInputType textType;
  final String? fontType;
  final double textSize;
  final double labelSize;
  final double hintSize;
  final double radius, sideWidth;
  final Color sideColor;
  const AppTextFormWidget(
      {required this.label,
      required this.hint,
      required this.textType,
      required this.prefIcon,
      required this.onChangeListener,
      required this.onValidateListener,
      required this.initialValue,
      required this.fontType,
      required this.textSize,
      required this.hintSize,
      required this.labelSize,
      required this.radius,
      required this.sideColor,
      required this.sideWidth,
      Key? key})
      : super(key: key);
  static bool? passwordObscure = true;
  static bool? passwordVisibilty = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return TextFormField(
          initialValue: initialValue,
          onChanged: onChangeListener,
          validator: onValidateListener,
          keyboardType: textType,
          style: TextStyle(
            fontFamily: fontType,
            fontSize: textSize,
          ),
          decoration: InputDecoration(
            border: _textFieldBorder(radius, sideColor, sideWidth),
            disabledBorder: _textFieldBorder(radius, sideColor, sideWidth),
            enabledBorder: _textFieldBorder(radius, sideColor, sideWidth),
            focusedBorder: _textFieldBorder(radius, sideColor, sideWidth),
            hintText: hint,
            label: Text(
              label,
              style: TextStyle(
                fontSize: labelSize,
                fontFamily: fontType,
              ),
            ),
            hintStyle: TextStyle(
              fontSize: hintSize,
              fontFamily: fontType,
              fontWeight: FontWeight.w200,
            ),
            prefixIcon: Icon(
              prefIcon,
              size: 22,
            ),
            suffixIcon: label.toLowerCase().contains("password")
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
                    ),
                  )
                : null,
          ),
          obscureText: label.toLowerCase().contains("password")
              ? passwordObscure!
              : false,
          enabled: true,
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
