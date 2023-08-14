import 'package:flutter/material.dart';

class VisitsScreenHelper {
  static VisitsScreenHelper? _visitsScreenHelper;
  VisitsScreenHelper._internal();
  static VisitsScreenHelper instance() {
    if (_visitsScreenHelper == null) {
      return _visitsScreenHelper = VisitsScreenHelper._internal();
    }
    return _visitsScreenHelper!;
  }

  TabController? tabController;
  int? tabIndex;
  bool startAnimation0 = false;
  bool startAnimation1 = false;
  bool startAnimation2 = false;
  bool cancelAnimation = false;

  void onValue0(int value) {
    VisitsScreenHelper.instance().tabIndex = value;
    VisitsScreenHelper.instance().startAnimation1 = false;
    VisitsScreenHelper.instance().startAnimation2 = false;
  }

  void onValue1(int value) {
    VisitsScreenHelper.instance().tabIndex = value;
    VisitsScreenHelper.instance().startAnimation0 = false;
    VisitsScreenHelper.instance().startAnimation2 = false;
  }

  void onValue2(int value) {
    VisitsScreenHelper.instance().tabIndex = value;
    VisitsScreenHelper.instance().startAnimation1 = false;
    VisitsScreenHelper.instance().startAnimation0 = false;
  }

  void screenDispose() {
    tabController!.dispose();
  }
}
