import 'package:flutter/material.dart';

class AppTextLinkWidget extends StatelessWidget {
  const AppTextLinkWidget({
    required this.title,
    required this.style,
    required this.onClick,
    Key? key,
  }) : super(key: key);
  final void Function()? onClick;
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
