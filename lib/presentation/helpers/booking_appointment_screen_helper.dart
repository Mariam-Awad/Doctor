import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/presentation/screens/booking_screens/blood_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/personal_info_screen1.dart';
import 'package:doctor/presentation/screens/booking_screens/personal_info_screen2.dart';
import 'package:doctor/presentation/screens/booking_screens/review_booking_info_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/branch_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/choose_date_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/define_problem_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/define_problem_screen_two.dart';
import 'package:doctor/presentation/screens/booking_screens/height_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/old_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/verify_identity_screen.dart';
import 'package:doctor/presentation/screens/booking_screens/weight_screen.dart';
import 'package:flutter/material.dart';

class BookingAppointmentScreenHelper {
  static BookingAppointmentScreenHelper? _bookingAppointmentScreenHelper;
  BookingAppointmentScreenHelper._internal();
  static BookingAppointmentScreenHelper instance() {
    if (_bookingAppointmentScreenHelper == null) {
      return _bookingAppointmentScreenHelper =
          BookingAppointmentScreenHelper._internal();
    }
    return _bookingAppointmentScreenHelper!;
  }

  String fullNameValue = "Ahmed Talal";
  PageController bookingController = PageController(initialPage: 0);
  GlobalKey<FormState> formKeyScreen1 = GlobalKey<FormState>();
  GlobalKey<FormState> formKeyScreen2 = GlobalKey<FormState>();
  List<Widget> bookingScreens = const [
    PersonalInfoScreen1(),
    PersonalInfoScreen2(),
    VerifyIdentityScreen(),
    WeightScreen(),
    HeightScreen(),
    BloodScreen(),
    OldScreen(),
    DefineProblemScreen(),
    DefineProblemScreenTwo(),
    ChooseDateScreen(),
    BranchScreen(),
    // TODO : OTP SCREEN
    ReviewBookingInfoScreen(),
  ];

  navToSecondPage(int pageIndex) {
   // if (formKeyScreen1.currentState!.validate()) {
      bookingController.animateToPage(
        pageIndex,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
   // }
  }

  navToThirdPage(int pageIndex) {
    if (gender.isNotEmpty) {
      bookingController.animateToPage(
        pageIndex,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  String gender = '';
  Color maleContainerColor = AppColorUtil.white;
  Color femaleContainerColor = AppColorUtil.white;

  Color setFemaleColor() =>
      BookingAppointmentScreenHelper.instance().gender == "female"
          ? AppColorUtil.white
          : Colors.black;
  Color setMaleColor() =>
      BookingAppointmentScreenHelper.instance().gender == "male"
          ? AppColorUtil.white
          : Colors.black;

  chooseGender(String type) {
    if (type.toLowerCase() == "male") {
      gender = "male";
      _setGenderContainerColor();
    } else {
      gender = "female";
      _setGenderContainerColor();
    }
    printInfo("the gender type => $gender");
  }

  _setGenderContainerColor() {
    if (gender.toLowerCase() == "male") {
      maleContainerColor = AppColorUtil.genderContainerColor;
      femaleContainerColor = Colors.white;
    } else {
      femaleContainerColor = AppColorUtil.genderContainerColor;
      maleContainerColor = Colors.white;
    }
  }
}
