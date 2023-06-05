import 'dart:async';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_styles_util.dart';
import '../widgets/background_widget.dart';
import '../widgets/login_form_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animation0 = false;
  bool animation1 = false;
  bool animation2 = false;
  bool animation3 = false;
  bool animation4 = false;
  bool animation5 = false;
  bool animationbackground = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {
          animation0 = true;
          animation1 = true;
          animation2 = true;
          animation3 = true;
          animation4 = true;
          animation5 = true;
          animationbackground = true;
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
                      animation0
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
                      animation1
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
                      animation1
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
                      animation2
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
                      animation3
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
                    animationbackground
                        ? 0 // mwgoda
                        : MediaQuery.of(context).size.width, // msh mwgoda,
                    0,
                    0),
                curve: Curves.easeInOut,
                color: Colors.transparent,
                child: Image.asset(
                  AppAssetsUtil.loginBackgroundSVG,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 2600),
                transform: Matrix4.translationValues(
                    animation4
                        ? -80 // msh mwgoda,
                        : 0, // mwgoda
                    animation4
                        ? -180 // msh mwgoda,
                        : 0, // mwgoda
                    0),
                curve: Curves.easeInOut,
                color: Colors.transparent,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 350.h),
                    child: Column(
                      children: [
                        TweenAnimationBuilder(
                            tween: Tween<double>(begin: 40, end: 30),
                            duration: const Duration(seconds: 2),
                            builder: (context, dynamic value, child) {
                              return Text("Dr.KARIM\n AGGOUR",
                                  textAlign: TextAlign.center,
                                  style: AppStylesUtil.textBoldStyle(
                                    value,
                                    AppColorUtil.white,
                                    FontWeight.bold,
                                  ));
                            }),
                        Text(
                          "  Dermatologist",
                          textAlign: TextAlign.center,
                          style: AppStylesUtil.textRegularStyle(
                            18.sp,
                            AppColorUtil.backgroundDarkWhite,
                            FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 2600),
                  transform: Matrix4.translationValues(
                      0,
                      animation5
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
