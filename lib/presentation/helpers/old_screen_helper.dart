class OldScreenHelper {
  static OldScreenHelper? _oldScreenHelper;
  OldScreenHelper._internal();
  static OldScreenHelper instance() {
    if (_oldScreenHelper == null) {
      return _oldScreenHelper = OldScreenHelper._internal();
    }
    return _oldScreenHelper!;
  }

  int selectedIndex = -1;

  onChangeAge(int index) {
    selectedIndex = index;
  }
}
