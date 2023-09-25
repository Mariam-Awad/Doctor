import 'package:doctor/presentation/widgets/user_profile_screen_items_widget/user_profile_item1_widget.dart';
import 'package:doctor/presentation/widgets/user_profile_screen_items_widget/user_profile_item2_widget.dart';
import 'package:doctor/presentation/widgets/user_profile_screen_items_widget/user_profile_item3_widget.dart';
import 'package:flutter/material.dart';

class UserProfileDetailsScreenHelper {
  static UserProfileDetailsScreenHelper? _userProfileDetailsScreenHelper;
  UserProfileDetailsScreenHelper._internal();
  static UserProfileDetailsScreenHelper instance() {
    if (_userProfileDetailsScreenHelper == null) {
      return _userProfileDetailsScreenHelper =
          UserProfileDetailsScreenHelper._internal();
    }
    return _userProfileDetailsScreenHelper!;
  }

  FocusNode focusNode = FocusNode();

  List<Widget> setContainerChildes() {
    return const [
      UserProfileItem1Widget(),
      UserProfileItem2Widget(),
      UserProfileItem3Widget(),
    ];
  }
}
