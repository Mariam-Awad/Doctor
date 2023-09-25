import 'package:doctor/core/app_debug_prints.dart';

class BloodScreenHelper {
  static BloodScreenHelper? _oldScreenHelper;
  BloodScreenHelper._internal();
  static BloodScreenHelper instance() {
    if (_oldScreenHelper == null) {
      return _oldScreenHelper = BloodScreenHelper._internal();
    }
    return _oldScreenHelper!;
  }

  List<String> bloodWidget1 = ['A+', 'B+', 'O+', 'AB+'];
  List<String> bloodWidget2 = ['A-', 'B-', 'O-', 'AB-'];

  int selectedIndex = -1;

  bool bloodWidget1animation = false;
  bool bloodWidget2animation = false;

  onChangeBloodType(int index) {
    selectedIndex = index;
    printDone(selectedIndex);
  }
}
