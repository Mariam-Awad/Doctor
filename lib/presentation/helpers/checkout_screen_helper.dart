import 'package:doctor/core/utils/app_assets_util.dart';

class CheckoutScreenHelper {
  static CheckoutScreenHelper? _checkoutScreenHelper;
  CheckoutScreenHelper._internal();
  static CheckoutScreenHelper instance() {
    if (_checkoutScreenHelper == null) {
      return _checkoutScreenHelper = CheckoutScreenHelper._internal();
    }
    return _checkoutScreenHelper!;
  }

  bool checkoutanimation = false;


}
