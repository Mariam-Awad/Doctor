import 'package:doctor/domain/entities/doctor_entity.dart';
import 'package:doctor/domain/repositories/i_doctor_repo.dart';
import 'package:doctor/data/services/api/doctor_api_service.dart';
import 'package:either_dart/either.dart';

class DoctorRepositoryImp implements IDoctorRepository {
  static DoctorRepositoryImp? _doctorRepositoryImp;
  DoctorRepositoryImp._internal();
  static DoctorRepositoryImp instance() {
    if (_doctorRepositoryImp == null) {
      return _doctorRepositoryImp = DoctorRepositoryImp._internal();
    }
    return _doctorRepositoryImp!;
  }

  @override
  Stream<Either<String, DoctorEntity>> getDoctorModel(doctorId) {
    return DoctorApiService.instance().getDoctorModelService(doctorId);
  }
}
