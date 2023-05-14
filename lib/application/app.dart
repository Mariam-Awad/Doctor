import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // Named private constructor

  static final MyApp _instance =
      MyApp._internal(); // Singleton or Single Instance

  factory MyApp() => _instance; // Factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
