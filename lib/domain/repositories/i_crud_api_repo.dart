import 'package:dio/dio.dart';

abstract class ICrudApiRepository {
  Future<Response> getRequest({
    required String path,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? data,
    Options? options,
  });

  Future<Response> postRequest({
    required String path,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? data,
    Options? options,
  });

  Future<Response> putRequest({
    required String path,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? data,
    Options? options,
  });

  Future<Response> deleteRequest({
    required String path,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? data,
    Options? options,
  });
}
