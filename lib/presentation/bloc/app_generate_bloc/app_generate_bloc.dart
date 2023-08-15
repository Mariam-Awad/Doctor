import 'dart:async';

import 'package:doctor/data/repositories_imp/generate_app_repo_imp.dart';
import 'package:doctor/domain/usecases/genetate_app_usecase.dart';
import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_events.dart';
import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenerateAppBloc extends Bloc<AppGenerateEvents, AppGenerateStates> {
  GenerateAppBloc() : super(const AppGenerateInitState()) {
    on<GetAppModelEvent>(getAppModelRequest);
  }

  FutureOr<void> getAppModelRequest(
      GetAppModelEvent event, Emitter<AppGenerateStates> emit) async {
    emit(GetAppModelLoadingState());
    return emit.forEach(
      GenerateAppUseCase.instance()
          .creator<GenerateAppRepositoryImp>(
              GenerateAppRepositoryImp.instance())
          .getAppModel("model"),
      onData: (state) {
        AppGenerateStates? generateState;
        state.fold((left) {
          generateState = const GetAppModelFailedState();
        }, (right) {
          generateState = GetAppModelLoadedState(appEntity: right);
        });
        return generateState!;
      },
    ).onError((error, stackTrace) {
      emit(const GetAppModelFailedState());
    });
  }
}
