import 'dart:async';

import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../config/routes/app_navigation_manager.dart';
import '../../config/routes/app_routes.dart';
import 'main_screen.dart';

class BookingConfirm extends StatefulWidget {
  const BookingConfirm({super.key});

  @override
  State<BookingConfirm> createState() => _BookingConfirmState();
}

class _BookingConfirmState extends State<BookingConfirm> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 3500), () {
      AppNavigationManager.navPush(
          screen: AppRoutes.mainRouteName, context: context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColorUtil.textDarkGreen,
          child: Padding(
            padding: EdgeInsets.only(top: 0.h),
            child: Center(
              child: Lottie.asset('assets/confirm.json',
                  width: 300, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
