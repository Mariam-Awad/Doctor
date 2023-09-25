import 'package:dio/dio.dart';
import 'package:doctor/config/dio_exception.dart';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_api_paths.dart';
import 'package:doctor/data/models/app_model.dart';
import 'package:doctor/data/repositories_imp/crud_api_repository_imp.dart';
import 'package:doctor/domain/entities/app_entity.dart';
import 'package:either_dart/either.dart';

class GenerateAppApiService {
  static GenerateAppApiService? _generateAppApiService;
  GenerateAppApiService._internal();
  static GenerateAppApiService instance() {
    if (_generateAppApiService == null) {
      return _generateAppApiService = GenerateAppApiService._internal();
    }
    return _generateAppApiService!;
  }

  Stream<Either<String, AppEntity>> getAppModelService() async* {
    try {
      Response response = await CrudApiRepositoryImp.instance().getRequest(
        path: AppApiPaths.GENERATE_APP_PATH,
      );
      if(response.statusCode == 200){
        printDone("the get app model success => ${response.data}");
        yield Right(AppModel.fromJson(response.data));
      }
    } on DioException catch (error) {
      dynamic message = DioExceptions.dioErrorHandling(error);
      printError("the get app model failed from dio catch => $message");
      yield Left(message);
    } catch (e) {
      printError("the get app model failed from catch => $e");
      yield Left(e.toString());
    }
  }
}
