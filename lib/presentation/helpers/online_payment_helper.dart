import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/components/visa_component.dart';
import '../../core/utils/app_colors_util.dart';

class OnlinePaymentHelper {
  static OnlinePaymentHelper? _onlinepaymentHelper;
  OnlinePaymentHelper._internal();
  static OnlinePaymentHelper instance() {
    if (_onlinepaymentHelper == null) {
      return _onlinepaymentHelper = OnlinePaymentHelper._internal();
    }
    return _onlinepaymentHelper!;
  }

  int pageIndex = 0;
  bool checkoutanimation = false;
  
  List<Widget> demo = [
    VisaComponent(
      widthContainer: 277.w,
      heightContainer: 133.h,
      backgroundcolorone: AppColorUtil.visaDarkBlack,
      backgroundcolortwo: AppColorUtil.visaLightBlack,
      name: 'Samar Maged',
      cardnumber: '3455 5363 2732 3727',
      duedate: '02/25',
    ),
    VisaComponent(
      widthContainer: 277.w,
      heightContainer: 133.h,
      backgroundcolorone: AppColorUtil.visaDarkBlue,
      backgroundcolortwo: AppColorUtil.visaLightBlue,
      name: 'Samar Maged',
      cardnumber: '3455 5363 2732 3727',
      duedate: '02/25',
    ),
    VisaComponent(
      widthContainer: 277.w,
      heightContainer: 133.h,
      backgroundcolorone: AppColorUtil.visaDarkgrey,
      backgroundcolortwo: AppColorUtil.shadowGrey,
      name: 'Samar Maged',
      cardnumber: '3455 5363 2732 3727',
      duedate: '02/25',
    ),
  ];
}
