import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<DoctorBloc>(
            create: (context) => DoctorBloc(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColorUtil.textDarkGreen,
              onPrimary: AppColorUtil.textDarkGreen,
              secondary: AppColorUtil.backgroundDarkBabyBlue,
              onSecondary: AppColorUtil.backgroundDarkBabyBlue,
              error: AppColorUtil.red,
              onError: AppColorUtil.red,
              background: AppColorUtil.white,
              onBackground: AppColorUtil.white,
              surface: AppColorUtil.white,
              onSurface: AppColorUtil.white,
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.onBoardingScreenRouteName,
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
      ),
    );
  }
}
