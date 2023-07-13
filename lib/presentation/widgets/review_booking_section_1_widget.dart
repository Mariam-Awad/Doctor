import 'package:doctor/presentation/widgets/review_booking_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewBookingSection1Widget extends StatelessWidget {
  const ReviewBookingSection1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 337.w,
      child: Column(
        children: [
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.full_name,
            value: "Samer Maged",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.gender,
            value: "Male",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.date_of_birth,
            value: "20 february 1994",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.telephone,
            value: "01111077944",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.weight,
            value: "50 Kg",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.height,
            value: "150 m",
          ),
          8.verticalSpace,
          ReviewBookingViewWidget(
            title: AppLocalizations.of(context)!.blood_type,
            value: "A+",
          ),
        ],
      ),
    );
  }
}
