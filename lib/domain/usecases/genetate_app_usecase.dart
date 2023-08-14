import 'package:doctor/domain/repositories/i_generate_app_repo.dart';
import 'package:doctor/domain/usecases/i_usecase_provider.dart';

class GenerateAppUseCase implements IUseCaseProvider<IGenerateAppRepository> {
  static GenerateAppUseCase? _generateAppUseCase;
  GenerateAppUseCase._internal();
  static GenerateAppUseCase instance() {
    if (_generateAppUseCase == null) {
      return _generateAppUseCase = GenerateAppUseCase._internal();
    }
    return _generateAppUseCase!;
  }

  @override
  IGenerateAppRepository creator(IGenerateAppRepository generateAppRepository) {
    return generateAppRepository;
  }
}
