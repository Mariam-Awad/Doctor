import 'dart:async';

import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_events.dart';
import 'package:doctor/presentation/bloc/app_generate_bloc/app_generate_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenerateAppBloc extends Bloc<AppGenerateEvents, AppGenerateStates> {
  GenerateAppBloc() : super(const AppGenerateInitState()) {
    on<GetAppModelEvent>(getAppModelRequest);
  }

  FutureOr<void> getAppModelRequest(
      GetAppModelEvent event, Emitter<AppGenerateStates> emit) async {
        
      }
}
