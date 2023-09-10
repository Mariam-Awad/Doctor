import 'package:dio/dio.dart';
import 'package:doctor/config/dio_exception.dart';
import 'package:doctor/core/app_debug_prints.dart';
import 'package:doctor/core/utils/app_api_paths.dart';
import 'package:doctor/data/models/doctor_model.dart';
import 'package:doctor/data/repositories_imp/crud_api_repository_imp.dart';
import 'package:doctor/domain/entities/doctor_entity.dart';
import 'package:either_dart/either.dart';

class DoctorApiService {
  static DoctorApiService? _doctorApiService;
  DoctorApiService._internal();
  static DoctorApiService instance() {
    if (_doctorApiService == null) {
      return _doctorApiService = DoctorApiService._internal();
    }
    return _doctorApiService!;
  }

  Stream<Either<String, DoctorEntity>> getDoctorModelService(
      var doctorId) async* {
    try {
      Response response = await CrudApiRepositoryImp.instance().getRequest(
        path: AppApiPaths.GET_DOCTOR_MODEL_PATH,
        parameters: {"id": doctorId},
      );
      if (response.statusCode == 200) {
        printDone("the get app model success => ${response.data}");
        yield Right(DoctorModel.fromJson(response.data));
      }
    } on DioException catch (error) {
      dynamic message = DioExceptions.dioErrorHandling(error);
      printError("the get doctor model failed from dio catch => $message");
      yield Left(message);
    } catch (e) {
      printError("the get doctor model failed from catch => $e");
      yield Left(e.toString());
    }
  }
}
