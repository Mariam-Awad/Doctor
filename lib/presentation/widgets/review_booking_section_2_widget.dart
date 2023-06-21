import 'package:doctor/presentation/widgets/review_booking_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewBookingSection2Widget extends StatelessWidget {
  const ReviewBookingSection2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.age,
            value: "30",
          ),
          5.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.visit_type,
            value: "Medical Consultation",
          ),
          5.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.your_problem,
            value: "Stomach Pain",
          ),
          5.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.appointment_date,
            value: "11:04 am",
          ),
          5.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.branch,
            value: "16-El-fath Street ,Mohandsien Mit Okba , Giza Government",
          ),
          5.verticalSpace,
        ],
      ),
    );
  }
}
