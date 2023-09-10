import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/data/models/app_theme_model.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_states.dart';
import 'package:doctor/presentation/helpers/Doctor_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    DoctorHelper.instance().getDoctorModelFun(context, 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil.background2LightGreen,
      body: Container(
        height: ScreenResizer.getScreenHeight(context),
        width: ScreenResizer.getScreenWidth(context),
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 20.h,
        ),
        child:
            BlocConsumer<DoctorBloc, DoctorStates>(listener: (context, state) {
          if (state is GetDoctorModelLoadedState) {
            DoctorHelper.instance().doctorModel = state.appEntity;
            DoctorHelper.instance().setAppTheme();
            AppNavigationManager.navPushReplacement(
              context: context,
              screen: AppRoutes.splashScreenRouteName,
            );
          } else if (state is DoctorFailedState) {
            DoctorHelper.instance().doctorModel = null;
          }
        }, builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              20.verticalSpace,
              Text(
                "Please waiting until \n loading the data",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
