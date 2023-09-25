import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/routes/app_routes.dart';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/presentation/helpers/payment_screen_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreenHelper {
  static AccountScreenHelper? _accountScreenHelper;
  AccountScreenHelper._internal();
  static AccountScreenHelper instance() {
    if (_accountScreenHelper == null) {
      return _accountScreenHelper = AccountScreenHelper._internal();
    }
    return _accountScreenHelper!;
  }

  List<String> setBtnTitles(BuildContext context) => [
        AppLocalizations.of(context)!.user_profile,
        AppLocalizations.of(context)!.payment,
        AppLocalizations.of(context)!.settings,
        AppLocalizations.of(context)!.logout,
      ];

  final List<String> _accountScreens = [
    AppRoutes.userProfileDetailsRouteName,
    AppRoutes.paymentRouteName,
    AppRoutes.settingsRouteName,
  ];

  navBetweenScreens(BuildContext context, index) {
    if (index == 3) {
      printInfo("logout");
      // TODO:call logout fun here
      return;
    }
    if (index == 1) {
      PaymentScreenHelper.instance().isCommingFromProfileRoute = true;
    }
    AppNavigationManager.navPush(
        screen: _accountScreens[index], context: context);
  }
}
