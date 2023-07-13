class SplahScreenHelper {
  static SplahScreenHelper? _splashScreenHelper;
  SplahScreenHelper._internal();
  static SplahScreenHelper instance() {
    if (_splashScreenHelper == null) {
      return _splashScreenHelper = SplahScreenHelper._internal();
    }
    return _splashScreenHelper!;
  }

  bool animation0 = false;
  bool animation1 = false;
  bool animation2 = false;
  bool animation3 = false;
  bool animation4 = false;
  bool animation5 = false;
  bool animationbackground = false;

  configState() {
    animation0 = true;
    animation1 = true;
    animation2 = true;
    animation3 = true;
    animation4 = true;
    animation5 = true;
    animationbackground = true;
  }
}
