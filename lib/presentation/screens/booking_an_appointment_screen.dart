import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/presentation/helpers/booking_appointment_screen_helper.dart';
import 'package:flutter/material.dart';

class BookingAnAppointmentScreen extends StatelessWidget {
  const BookingAnAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: BookingAppointmentScreenHelper.instance().bookingScreens.length,
        controller: BookingAppointmentScreenHelper.instance().bookingController,
        onPageChanged: (value) {
          printInfo(value);
        },
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return BookingAppointmentScreenHelper.instance().bookingScreens[index];
        },
      ),
    );
  }
}
