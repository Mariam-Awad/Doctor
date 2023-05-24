import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    required this.onClick,
    required this.customChild,
    required this.btnBackgroundColor,
    required this.btnPadding,
    required this.btnSize,
    required this.btnRadius,
    Key? key,
  }) : super(key: key);

  final void Function()? onClick;
  final Widget customChild;
  final Color btnBackgroundColor;
  final EdgeInsets btnPadding;
  final Size btnSize;
  final double btnRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: TextButton.styleFrom(
        backgroundColor: btnBackgroundColor,
        padding: btnPadding,
        fixedSize: btnSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(btnRadius),
        ),
      ),
      child: customChild,
    );
  }
}
