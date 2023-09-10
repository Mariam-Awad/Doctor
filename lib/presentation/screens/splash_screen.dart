import 'dart:async';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_states.dart';
import 'package:doctor/presentation/helpers/Doctor_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_styles_util.dart';
import '../helpers/splash_screen_helper.dart';
import '../widgets/login_form_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    DoctorHelper.instance().getDoctorModelFun(context, 1);
    Future.delayed(const Duration(milliseconds: 200), () {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {
          SplahScreenHelper.instance().configState();
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil.background2LightGreen,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: -60,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2500),
                  transform: Matrix4.translationValues(
                      SplahScreenHelper.instance().animation0
                          ? MediaQuery.of(context).size.width // msh mwgoda,
                          : 0, // mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  color: Colors.transparent,
                  child: Image.asset(
                    AppAssetsUtil.sama3aImage,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 180.h,
                left: 210.w,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2500),
                  transform: Matrix4.translationValues(
                      SplahScreenHelper.instance().animation1
                          ? MediaQuery.of(context).size.width // msh mwgoda,
                          : 0, // mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  color: Colors.transparent,
                  child: Image.asset(
                    AppAssetsUtil.plusImage,
                    height: 300.h,
                    width: 200.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: -40,
                left: 210.w,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2500),
                  transform: Matrix4.translationValues(
                      SplahScreenHelper.instance().animation1
                          ? MediaQuery.of(context).size.width // msh mwgoda,
                          : 0, // mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  color: Colors.transparent,
                  child: Image.asset(
                    AppAssetsUtil.anabebImage,
                    height: 350.h,
                    width: 300.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 100.h,
                left: -50.w,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2500),
                  transform: Matrix4.translationValues(
                      SplahScreenHelper.instance().animation2
                          ? -300 // msh mwgoda,
                          : 0, // mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  color: Colors.transparent,
                  child: Image.asset(
                    AppAssetsUtil.capsolaImage1,
                    height: 350.h,
                    width: 340.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 50.h,
                left: -160.w,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2500),
                  transform: Matrix4.translationValues(
                      SplahScreenHelper.instance().animation3
                          ? -300 // msh mwgoda,
                          : 0, // mwgoda
                      0,
                      0),
                  curve: Curves.easeInOut,
                  color: Colors.transparent,
                  child: Image.asset(
                    AppAssetsUtil.termometerImage,
                    height: 440.h,
                    width: 400.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              AnimatedContainer(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                duration: const Duration(milliseconds: 2500),
                transform: Matrix4.translationValues(
                    SplahScreenHelper.instance().animationbackground
                        ? 55 // mwgoda
                        : MediaQuery.of(context).size.width, // msh mwgoda,
                    0,
                    0),
                curve: Curves.easeInOut,
                color: Colors.transparent,
                child: Image.asset(
                  AppAssetsUtil.loginBk,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 2600),
                transform: Matrix4.translationValues(
                    SplahScreenHelper.instance().animation4
                        ? -80 // msh mwgoda,
                        : 0, // mwgoda
                    SplahScreenHelper.instance().animation4
                        ? -180 // msh mwgoda,
                        : 0, // mwgoda
                    0),
                curve: Curves.easeInOut,
                color: Colors.transparent,
                child: Center(
                  child: BlocBuilder<DoctorBloc, DoctorStates>(
                    builder: (context, state) {
                      printInfo("the doctor state is => $state");
                      if (state is DoctorInitState) {
                        return Text(
                          "Nice to see you",
                          style: AppStylesUtil.textRegularStyle(
                            25.sp,
                            AppColorUtil.backgroundDarkWhite,
                            FontWeight.bold,
                          ),
                        );
                      } else if (state is GetDoctorModelLoadingState) {
                        return const CircularProgressIndicator();
                      } else if (state is GetDoctorModelLoadedState) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 350.h,
                            left: 20.w,
                          ),
                          child: Column(
                            children: [
                              TweenAnimationBuilder(
                                  tween: Tween<double>(begin: 40, end: 30),
                                  duration: const Duration(seconds: 2),
                                  builder: (context, dynamic value, child) {
                                    return Text(
                                      state.appEntity.records!.doctor!
                                          .doctorName!,
                                      textAlign: TextAlign.center,
                                      style: AppStylesUtil.textBoldStyle(
                                        value,
                                        AppColorUtil.white,
                                        FontWeight.bold,
                                      ),
                                    );
                                  }),
                              Text(
                                "  ${state.appEntity.records!.doctor!.applicationName}",
                                textAlign: TextAlign.center,
                                style: AppStylesUtil.textRegularStyle(
                                  18.sp,
                                  AppColorUtil.backgroundDarkWhite,
                                  FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (state is DoctorFailedState) {
                        return Container(
                          color: Colors.red,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              ),
              Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2600),
                  transform: Matrix4.translationValues(
                      0,
                      SplahScreenHelper.instance().animation5
                          ? MediaQuery.of(context).size.height / 10 // mwgoda
                          : 600, // msh mwgoda,
                      0),
                  curve: Curves.easeInOut,
                  child: const LoginFormWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
