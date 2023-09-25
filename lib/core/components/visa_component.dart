import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class VisaComponent extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final Color backgroundcolorone;
  final Color backgroundcolortwo;
  final String cardnumber;
  final String name;
  final String duedate;

  const VisaComponent(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.cardnumber,
      required this.name,
      required this.duedate,
      required this.backgroundcolorone,
      required this.backgroundcolortwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0.sp),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [backgroundcolorone, backgroundcolortwo]),
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssetsUtil.cardLogo2Icon,
                      width: 27.w, height: 20.h, fit: BoxFit.contain),
                  5.horizontalSpace,
                  SvgPicture.asset(AppAssetsUtil.wifiIcon,
                      width: 50.w, height: 16.h, fit: BoxFit.contain),
                ],
              ),
              SvgPicture.asset(AppAssetsUtil.cardLogoIcon,
                  width: 32.w, height: 20.h, fit: BoxFit.contain),
            ],
          ),
          Text(cardnumber,
              textAlign: TextAlign.center,
              style: AppStylesUtil.textRegularStyle(
                  21.sp, AppColorUtil.white, FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Card Holder',
                    textAlign: TextAlign.center,
                    style: AppStylesUtil.textRegularStyle(
                      8.sp,
                      AppColorUtil.shadowGrey,
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: AppStylesUtil.textRegularStyle(
                      9.sp,
                      AppColorUtil.white,
                      FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(
                duedate,
                textAlign: TextAlign.center,
                style: AppStylesUtil.textRegularStyle(
                  9.sp,
                  AppColorUtil.white,
                  FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
