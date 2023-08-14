import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    required this.onClick,
    required this.customChild,
    required this.btnBackgroundColor,
    this.btnPadding,
    this.border,
    required this.btnSize,
    required this.btnRadius,
    Key? key,
    required this.width,
    required this.height,
    //this.borderSide,
  }) : super(key: key);

  final void Function()? onClick;
  final Widget customChild;
  final Color btnBackgroundColor;
  final EdgeInsets? btnPadding;
  final Size btnSize;
  final double btnRadius;
  final double width;
  final double height;
  final BorderSide? border;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          backgroundColor: btnBackgroundColor,
          padding: btnPadding,
          fixedSize: btnSize,
          side: border,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnRadius),
          ),
        ),
        child: customChild,
      ),
    );
  }
}
