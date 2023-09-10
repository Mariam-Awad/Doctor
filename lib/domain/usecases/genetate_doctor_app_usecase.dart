import 'package:doctor/domain/repositories/i_doctor_repo.dart';
import 'package:doctor/domain/usecases/i_usecase_provider.dart';

class GenerateDoctorAppUseCase implements IUseCaseProvider<IDoctorRepository> {
  static GenerateDoctorAppUseCase? _generateDoctorAppUseCase;
  GenerateDoctorAppUseCase._internal();
  static GenerateDoctorAppUseCase instance() {
    if (_generateDoctorAppUseCase == null) {
      return _generateDoctorAppUseCase = GenerateDoctorAppUseCase._internal();
    }
    return _generateDoctorAppUseCase!;
  }

  @override
  IGenerateAppRepository call<IGenerateAppRepository>(
      IGenerateAppRepository generateAppRepository) {
    return generateAppRepository;
  }
}
