import 'dart:async';

import 'package:doctor/data/repositories_imp/doctor_repo_imp.dart';
import 'package:doctor/domain/usecases/genetate_doctor_app_usecase.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_events.dart';
import 'package:doctor/presentation/bloc/doctor_bloc/doctor_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorBloc extends Bloc<DoctorEvents, DoctorStates> {
  DoctorBloc() : super(const DoctorInitState()) {
    on<GetDoctorModelEvent>(getDoctorModelRequest);
  }

  FutureOr<void> getDoctorModelRequest(
      GetDoctorModelEvent event, Emitter<DoctorStates> emit) async {
    emit(GetDoctorModelLoadingState());
    return emit.forEach(
      GenerateDoctorAppUseCase.instance()
          .call<DoctorRepositoryImp>(DoctorRepositoryImp.instance())
          .getDoctorModel(event.doctorId),
      onData: (state) {
        DoctorStates? generateState;
        state.fold((left) {
          generateState = const DoctorFailedState();
        }, (right) {
          generateState = GetDoctorModelLoadedState(appEntity: right);
        });
        return generateState!;
      },
    ).onError((error, stackTrace) {
      emit(const DoctorFailedState());
    });
  }
}
