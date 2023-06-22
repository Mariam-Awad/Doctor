import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors_util.dart';
import '../utils/app_styles_util.dart';

class CheckoutTotalAmount extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final Color colorContainer;
  final double feeAmount;
  final double chargesAmount;
  final double discountAmount;
  final double totalAmount;

  const CheckoutTotalAmount(
      {super.key,
      required this.widthContainer,
      required this.heightContainer,
      required this.colorContainer,
      required this.feeAmount,
      required this.chargesAmount,
      required this.discountAmount,
      required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      width: widthContainer,
      height: heightContainer,
      decoration: BoxDecoration(
          color: colorContainer, // Change
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              'Total Amount',
              textAlign: TextAlign.center,
              style: AppStylesUtil.textRegularStyle(
                  16.sp, AppColorUtil.white, FontWeight.bold),
            ),
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Fee',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
              Text(
                '$feeAmount  EGP',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Charges',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
              Text(
                '$chargesAmount EGP',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Discounr',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
              Text(
                '$discountAmount EGP',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.bold),
              ),
              Text(
                '$totalAmount EGP',
                style: AppStylesUtil.textRegularStyle(
                    16.sp, AppColorUtil.white, FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
