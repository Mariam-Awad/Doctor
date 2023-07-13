import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/notification_component.dart';
import '../../../core/utils/app_colors_util.dart';
import '../../../core/utils/app_styles_util.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil.backgroundLightBabyBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 60.h, bottom: 20.h, left: 20.w, right: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notifications',
                      textAlign: TextAlign.center,
                      style: AppStylesUtil.textBoldStyle(
                          20.sp, AppColorUtil.textDarkGreen, FontWeight.bold),
                    ),
                    Text(
                      'Clear All',
                      textAlign: TextAlign.center,
                      style: AppStylesUtil.textBoldStyle(
                          12.sp,
                          AppColorUtil.textDarkGreen.withOpacity(0.75),
                          FontWeight.bold),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0.0),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return NotificationComponent(
                      title: 'Appointment Confirmed',
                      discreption:
                          'Appointment Confirmed with DR.Karim will be held on Saturday, 11th of January 10:30 AM',
                      onTap: () {},
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
