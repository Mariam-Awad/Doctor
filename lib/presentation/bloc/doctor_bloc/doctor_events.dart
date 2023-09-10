abstract class DoctorEvents {
  const DoctorEvents();
}

class GetDoctorModelEvent extends DoctorEvents {
  final dynamic doctorId;
  const GetDoctorModelEvent({required this.doctorId});
}
