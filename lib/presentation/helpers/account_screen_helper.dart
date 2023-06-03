import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreenHelper{
  static AccountScreenHelper? _accountScreenHelper;
  AccountScreenHelper._internal();
  static AccountScreenHelper instance(){
    if(_accountScreenHelper ==  null){
      return _accountScreenHelper = AccountScreenHelper._internal();
    }
    return _accountScreenHelper!;
  }

  List<String> setBtnTitles(BuildContext context)=> [
    AppLocalizations.of(context)!.user_profile,
    AppLocalizations.of(context)!.payment,
    AppLocalizations.of(context)!.settings,
    AppLocalizations.of(context)!.logout,
  ];
}