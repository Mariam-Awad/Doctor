import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:doctor/core/utils/app_api_paths.dart';
import 'package:flutter/foundation.dart';

class ApiHelper {
  static ApiHelper? _apiHelper;
  ApiHelper._internal();
  static ApiHelper instance() {
    if (_apiHelper == null) {
      return _apiHelper = ApiHelper._internal();
    }
    return _apiHelper!;
  }

  Dio initDio(String baseUrl) {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: "application/json",
        headers: {
          "Accept": "application/json",
        },
      ),
    );
    // this script very very important to handel https request
    if (AppApiPaths.BASE_URL_PATH.toLowerCase().startsWith('https') &&
        !kIsWeb) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient dioClient) {
        dioClient.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return dioClient;
      };
    }
    return dio;
  }
}
