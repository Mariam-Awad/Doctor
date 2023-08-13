import 'package:dio/dio.dart';
import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:doctor/core/utils/app_api_paths.dart';
import 'package:doctor/data/services/api/api_helper.dart';
import 'package:doctor/domain/repositories/i_crud_api_repo.dart';

class CrudApiRepositoryImp implements ICrudApiRepository {
  static CrudApiRepositoryImp? _crudApiRepositoryImp;
  CrudApiRepositoryImp._internal();
  static CrudApiRepositoryImp instance() {
    if (_crudApiRepositoryImp == null) {
      return _crudApiRepositoryImp = CrudApiRepositoryImp._internal();
    }
    return _crudApiRepositoryImp!;
  }

  Dio dio = ApiHelper.instance().initDio(AppApiPaths.BASE_URL_PATH);

  @override
  Future<Response> deleteRequest(
      {required String path,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? data,
      Options? options}) async {
    return await dio.delete(
      path,
      data: data,
      queryParameters: parameters,
      options: options,
    );
  }

  @override
  Future<Response> getRequest(
      {required String path,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? data,
      Options? options}) async {
    return await dio.get(
      path,
      queryParameters: parameters,
      options: options,
      data: data,
    );
  }

  @override
  Future<Response> postRequest(
      {required String path,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? data,
      Options? options}) async {
    return await dio.post(
      path,
      queryParameters: parameters,
      options: options,
      data: data,
    );
  }

  @override
  Future<Response> putRequest(
      {required String path,
      Map<String, dynamic>? parameters,
      Map<String, dynamic>? data,
      Options? options}) async {
    return await dio.put(
      path,
      data: data,
      queryParameters: parameters,
      options: options,
    );
  }
}
