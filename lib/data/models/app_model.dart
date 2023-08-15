import 'package:doctor/domain/entities/app_entity.dart';

class AppModel extends AppEntity {
  AppModel({
    super.data,
  });

  AppModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  AppInfo.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class AppInfo {
  int? id;
  String? docotorName;
  String? specialist;
  String? logo;
  List<Clincs>? clincs;
  Colors? colors;
  Photos? photos;
  List<Features>? features;

  AppInfo(
      {id, docotorName, specialist, logo, clincs, colors, photos, features});

  AppInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    docotorName = json['docotor_name'];
    specialist = json['specialist'];
    logo = json['logo'];
    if (json['clincs'] != null) {
      clincs = <Clincs>[];
      json['clincs'].forEach((v) {
        clincs!.add(new Clincs.fromJson(v));
      });
    }
    colors =
        json['colors'] != null ? new Colors.fromJson(json['colors']) : null;
    photos =
        json['photos'] != null ? new Photos.fromJson(json['photos']) : null;
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(new Features.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['docotor_name'] = docotorName;
    data['specialist'] = specialist;
    data['logo'] = logo;
    if (clincs != null) {
      data['clincs'] = clincs!.map((v) => v.toJson()).toList();
    }
    if (colors != null) {
      data['colors'] = colors!.toJson();
    }
    if (photos != null) {
      data['photos'] = photos!.toJson();
    }
    if (features != null) {
      data['features'] = features!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Clincs {
  int? id;
  String? name;
  String? address;
  List<Services>? services;

  Clincs({id, name, address, services});

  Clincs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? id;
  String? serviceName;

  Services({id, serviceName});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['service_name'] = serviceName;
    return data;
  }
}

class Colors {
  String? splashColor;
  String? buttonColor1;
  String? buttonColor2;
  String? buttonColor3;
  String? buttonColor4;
  String? iconColor;
  String? textColor1;
  String? curveColor;
  String? notificationScreenColor;
  String? otpContainerColor;

  Colors(
      {splashColor,
      buttonColor1,
      buttonColor2,
      buttonColor3,
      buttonColor4,
      iconColor,
      textColor1,
      curveColor,
      notificationScreenColor,
      otpContainerColor});

  Colors.fromJson(Map<String, dynamic> json) {
    splashColor = json['splash_color'];
    buttonColor1 = json['button_color1'];
    buttonColor2 = json['button_color2'];
    buttonColor3 = json['button_color3'];
    buttonColor4 = json['button_color4'];
    iconColor = json['icon_color'];
    textColor1 = json['text_color_1'];
    curveColor = json['curve_color'];
    notificationScreenColor = json['notification_screen_color'];
    otpContainerColor = json['otp_container_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['splash_color'] = splashColor;
    data['button_color1'] = buttonColor1;
    data['button_color2'] = buttonColor2;
    data['button_color3'] = buttonColor3;
    data['button_color4'] = buttonColor4;
    data['icon_color'] = iconColor;
    data['text_color_1'] = textColor1;
    data['curve_color'] = curveColor;
    data['notification_screen_color'] = notificationScreenColor;
    data['otp_container_color'] = otpContainerColor;
    return data;
  }
}

class Photos {
  String? homeSplaachPhoto;

  Photos({homeSplaachPhoto});

  Photos.fromJson(Map<String, dynamic> json) {
    homeSplaachPhoto = json['home_splaach_photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['home_splaach_photo'] = homeSplaachPhoto;
    return data;
  }
}

class Features {
  int? id;
  bool? status;
  String? name;

  Features({id, status, name});

  Features.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['status'] = status;
    data['name'] = name;
    return data;
  }
}
