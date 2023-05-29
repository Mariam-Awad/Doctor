import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:doctor/config/l10n/l10n.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/config/routes/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.loginScreenRouteName,
        onGenerateRoute: AppRouteManager.generateRoute,
        locale: const Locale('en'),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.all,
      ),
    );
  }
}
