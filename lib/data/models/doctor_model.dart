import 'package:doctor/domain/entities/doctor_entity.dart';

class DoctorModel extends DoctorEntity {
  DoctorModel({
    super.records,
    super.success,
  });
  DoctorModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    records = json['records'] != null
        ? DorctorRecord.fromJson(json['records'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['success'] = success;
    if (records != null) {
      data['records'] = records!.toJson();
    }
    return data;
  }
}

class DorctorRecord {
  DoctorInfoModel? doctor;

  DorctorRecord({doctor});

  DorctorRecord.fromJson(Map<String, dynamic> json) {
    doctor = json['doctor'] != null
        ? DoctorInfoModel.fromJson(json['doctor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (doctor != null) {
      data['doctor'] = doctor!.toJson();
    }
    return data;
  }
}

class DoctorInfoModel {
  int? id;
  String? doctorName;
  String? doctorSpecialty;
  String? logo;
  String? applicationName;
  int? themeId;
  String? createdAt;
  String? updatedAt;
  List<DorctorService>? service;
  List<DoctorClinic>? clinic;
  List<DoctorFeature>? feature;
  DoctorTheme? theme;

  DoctorInfoModel(
      {id,
      doctorName,
      doctorSpecialty,
      logo,
      applicationName,
      themeId,
      createdAt,
      updatedAt,
      service,
      clinic,
      feature,
      theme});

  DoctorInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorName = json['doctor_name'];
    doctorSpecialty = json['specialty'];
    logo = json['logo'];
    applicationName = json['application_name'];
    themeId = json['theme_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['service'] != null) {
      service = <DorctorService>[];
      json['service'].forEach((v) {
        service!.add(DorctorService.fromJson(v));
      });
    }
    if (json['clinic'] != null) {
      clinic = <DoctorClinic>[];
      json['clinic'].forEach((v) {
        clinic!.add(DoctorClinic.fromJson(v));
      });
    }
    if (json['feature'] != null) {
      feature = <DoctorFeature>[];
      json['feature'].forEach((v) {
        feature!.add(DoctorFeature.fromJson(v));
      });
    }
    theme = json['theme'] != null ? DoctorTheme.fromJson(json['theme']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['doctor_name'] = doctorName;
    data['specialty'] = doctorSpecialty;
    data['logo'] = logo;
    data['application_name'] = applicationName;
    data['theme_id'] = themeId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (service != null) {
      data['service'] = service!.map((v) => v.toJson()).toList();
    }
    if (clinic != null) {
      data['clinic'] = clinic!.map((v) => v.toJson()).toList();
    }
    if (feature != null) {
      data['feature'] = feature!.map((v) => v.toJson()).toList();
    }
    if (theme != null) {
      data['theme'] = theme!.toJson();
    }
    return data;
  }
}

class DorctorService {
  int? id;
  String? serviceName;
  String? icon;
  int? price;
  int? doctorId;
  String? createdAt;
  String? updatedAt;

  DorctorService(
      {id, serviceName, icon, price, doctorId, createdAt, updatedAt});

  DorctorService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    icon = json['icon'];
    price = json['price'];
    doctorId = json['doctor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['service_name'] = serviceName;
    data['icon'] = icon;
    data['price'] = price;
    data['doctor_id'] = doctorId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class DoctorClinic {
  int? id;
  String? name;
  String? location;
  String? numbers;
  String? times;
  int? doctorId;
  String? createdAt;
  String? updatedAt;

  DoctorClinic(
      {id, name, location, numbers, times, doctorId, createdAt, updatedAt});

  DoctorClinic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    numbers = json['numbers'];
    times = json['times'];
    doctorId = json['doctor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['location'] = location;
    data['numbers'] = numbers;
    data['times'] = times;
    data['doctor_id'] = doctorId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class DoctorFeature {
  int? id;
  String? name;
  int? price;
  int? status;
  String? logo;
  String? description;
  String? createdAt;
  String? updatedAt;
  DoctorPivot? pivot;

  DoctorFeature(
      {id,
      name,
      price,
      status,
      logo,
      description,
      createdAt,
      updatedAt,
      pivot});

  DoctorFeature.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    status = json['status'];
    logo = json['logo'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? DoctorPivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['status'] = status;
    data['logo'] = logo;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    return data;
  }
}

class DoctorPivot {
  int? doctorId;
  int? featureId;

  DoctorPivot({doctorId, featureId});

  DoctorPivot.fromJson(Map<String, dynamic> json) {
    doctorId = json['doctor_id'];
    featureId = json['feature_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['doctor_id'] = doctorId;
    data['feature_id'] = featureId;
    return data;
  }
}

class DoctorTheme {
  int? id;
  int? number;
  String? name;
  String? defaultImage;
  String? createdAt;
  String? updatedAt;

  DoctorTheme({id, number, name, defaultImage, createdAt, updatedAt});

  DoctorTheme.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    name = json['name'];
    defaultImage = json['default_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['number'] = number;
    data['name'] = name;
    data['default_image'] = defaultImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
