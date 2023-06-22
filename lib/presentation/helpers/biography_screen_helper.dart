import 'package:doctor/core/utils/app_assets_util.dart';

class BiographyScreenHelper {
  static BiographyScreenHelper? _biographyScreenHelper;
  BiographyScreenHelper._internal();
  static BiographyScreenHelper instance() {
    if (_biographyScreenHelper == null) {
      return _biographyScreenHelper = BiographyScreenHelper._internal();
    }
    return _biographyScreenHelper!;
  }

  List<String> doctorImgServices = [
    AppAssetsUtil.group7Icon,
    AppAssetsUtil.group8Icon,
    AppAssetsUtil.group9Icon,
    AppAssetsUtil.group10Icon,
  ];

  List<String> doctorTitleServices = [
    "Skin Diseases",
    "Lab work",
    "Consultation",
    "Phototherapy",
  ];

  List<String> testimonialTitles = [
    "Will Steve",
    "Will Steve",
    "Will Steve",
  ];

  List<String> testimonialDescriptions = [
    "“I’ve been seeing Dr. Karim for years for my acne and he always knows exactly what to do to keep it under control.”",
    "“I’ve been seeing Dr. Karim for years for my acne and he always knows exactly what to do to keep it under control.”",
    "“I’ve been seeing Dr. Karim for years for my acne and he always knows exactly what to do to keep it under control.”",
  ];

  List<String> testimonialPhotos = [
    AppAssetsUtil.testimonialsImage1,
    AppAssetsUtil.testimonialsImage2,
    AppAssetsUtil.testimonialsImage1,
  ];
}
