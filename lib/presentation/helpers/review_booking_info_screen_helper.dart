import 'package:doctor/presentation/widgets/review_booking_section_1_widget.dart';
import 'package:doctor/presentation/widgets/review_booking_section_2_widget.dart';
import 'package:flutter/material.dart';

class ReviewBookingInfoScreenHelper {
  static ReviewBookingInfoScreenHelper? _reviewSBookingInfocreenHelper;
  ReviewBookingInfoScreenHelper._internal();
  static ReviewBookingInfoScreenHelper instance() {
    if (_reviewSBookingInfocreenHelper == null) {
      return _reviewSBookingInfocreenHelper =
          ReviewBookingInfoScreenHelper._internal();
    }
    return _reviewSBookingInfocreenHelper!;
  }

  List<Widget> reviewScreenSections = const [
    ReviewBookingSection1Widget(),
    ReviewBookingSection2Widget(),
  ];

  PageController pageVIewController = PageController(initialPage: 0);
  int index = 0;
}
