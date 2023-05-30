import 'package:flutter/material.dart';


class AppDropDownWidget extends StatelessWidget {
  final bool dropDownFill,isDense;
  final Color dropDownFillColor,dropdownColor, iconEnabledColor;
  final BorderSide side ;
  final double radius,iconSize ;
  final String hintText;
  final TextStyle hintStyle,dropDownTextStyle ;
  final dynamic dropDownValue ;
  final void Function(Object? value) onChange;
  final List<DropdownMenuItem<Object>>? items ;
  const AppDropDownWidget({
    required this.dropDownFill,
    required this.dropDownFillColor,
    required this.side,
    required this.radius,
    required this.dropdownColor,
    required this.iconSize,
    required this.iconEnabledColor,
    required this.hintText,
    required this.hintStyle,
    required this.dropDownTextStyle,
    required this.dropDownValue,
    required this.isDense,
    required this.onChange,
    required this.items,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FormField<dynamic>(
      builder: (FormFieldState<dynamic> state) {
        return InputDecorator(
          decoration: InputDecoration(
            filled: dropDownFill,
            fillColor: dropDownFillColor,
            //errorStyle: TextStyle(color: Colors.red[900], fontSize: 16.0),
            border: OutlineInputBorder(
              borderSide: side,
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: dropdownColor,
              iconSize: iconSize,
              iconEnabledColor: iconEnabledColor,
              hint: Text(
                hintText,
                style: hintStyle,
              ),
              style: dropDownTextStyle,
              value: dropDownValue,
              isDense: isDense,
              onChanged: onChange!,
              items: items
            ),
          ),
        );
      },
    );
  }
}
