import 'package:doctor/core/utils/app_assets_util.dart';

class HomeScreenHelper {
  static HomeScreenHelper? _homeScreenHelper;
  HomeScreenHelper._internal();
  static HomeScreenHelper instance() {
    if (_homeScreenHelper == null) {
      return _homeScreenHelper = HomeScreenHelper._internal();
    }
    return _homeScreenHelper!;
  }

  List<String> backGroundImages = [
    AppAssetsUtil.homeBackground1Image,
    AppAssetsUtil.homeBackground2Image,
    AppAssetsUtil.homeBackground3Image,
    AppAssetsUtil.homeBackground4Image,
    AppAssetsUtil.homeBackground5Image,
    AppAssetsUtil.homeBackground6Image,
  ];
  List<String> onBoardingTitles = ['Dr.KARIM AGGOUR'];

  List<String> onBoardingDescription = [
    'Dermatologist',
    'Specialist in Dermatology and Aesthetic Medicine,Ain-shams University',
    'Co-Founder@groovyclirics',
    'Specialist in Dermatology and Aesthetic Medicine,Ain-shams University',
    'International trainer@biolifusa',
    'Specialist in Dermatology and Aesthetic Medicine,Ain-shams University',
  ];
}
