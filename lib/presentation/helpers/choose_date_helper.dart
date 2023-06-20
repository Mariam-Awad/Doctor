import 'package:doctor/core/app_debug_prints.dart';

class ChooseDateHelper {
  static ChooseDateHelper? _oldScreenHelper;
  ChooseDateHelper._internal();
  static ChooseDateHelper instance() {
    if (_oldScreenHelper == null) {
      return _oldScreenHelper = ChooseDateHelper._internal();
    }
    return _oldScreenHelper!;
  }

  List<String> time = ['10:00am', '11:00am', '12:00am', '12:30am','02:00pm', '03:00pm', '04:00pm', '05:00pm'];
  List<bool> timeFree = [false, true, false, false, true,false,true,false];

  int selectedIndex = -1;

  bool bloodWidget1animation = false;
  bool bloodWidget2animation = false;

  onChangeBloodType(int index) {
    selectedIndex = index;
    printDone(selectedIndex);
  }
}
