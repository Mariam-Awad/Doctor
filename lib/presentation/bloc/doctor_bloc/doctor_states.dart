import 'package:doctor/domain/entities/doctor_entity.dart';

abstract class DoctorStates {
  const DoctorStates();
}

class DoctorInitState extends DoctorStates {
  const DoctorInitState();
}

class GetDoctorModelLoadingState extends DoctorStates {
  //TODO:implement state here
}

class GetDoctorModelLoadedState extends DoctorStates {
  final DoctorEntity appEntity;
  const GetDoctorModelLoadedState({required this.appEntity});
}

class DoctorFailedState extends DoctorStates {
  //TODO:implement failed state here
  const DoctorFailedState();
}
