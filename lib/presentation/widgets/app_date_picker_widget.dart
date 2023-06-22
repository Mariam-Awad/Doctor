import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

Future<DateTime?> showDatePicker(BuildContext context) async =>
    await showRoundedDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      borderRadius: 16,
      theme: ThemeData(
        primaryColor: Colors.red[400],
        dialogBackgroundColor: Colors.purple[50],
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.red),
          bodySmall: TextStyle(color: Colors.blue),
        ),
        disabledColor: Colors.orange,
      ),
    );
