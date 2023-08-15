import 'package:doctor/domain/repositories/i_generate_app_repo.dart';
import 'package:doctor/domain/entities/app_entity.dart';
import 'package:doctor/data/services/api/generate_app_api_service.dart';
import 'package:either_dart/either.dart';

class GenerateAppRepositoryImp implements IGenerateAppRepository {
  static GenerateAppRepositoryImp? _generateAppRepositoryImp;
  GenerateAppRepositoryImp._internal();
  static GenerateAppRepositoryImp instance() {
    if (_generateAppRepositoryImp == null) {
      return _generateAppRepositoryImp = GenerateAppRepositoryImp._internal();
    }
    return _generateAppRepositoryImp!;
  }

  @override
  Stream<Either<String, AppEntity>> getAppModel(model) {
    return GenerateAppApiService.instance().getAppModelService();
  }
}
