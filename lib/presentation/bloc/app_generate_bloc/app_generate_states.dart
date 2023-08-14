import 'package:doctor/domain/entities/app_entity.dart';

abstract class AppGenerateStates{
  const AppGenerateStates();
}

class AppGenerateInitState extends AppGenerateStates{
  const AppGenerateInitState();
}

class GetAppModelLoadingState extends AppGenerateStates{
  //TODO:implement state here
}

class GetAppModelLoadedState extends AppGenerateStates{
  final AppEntity appEntity;
  const GetAppModelLoadedState({required this.appEntity});
}

class GetAppModelFailedState extends AppGenerateStates{
  //TODO:implement failed state here
  const GetAppModelFailedState();
}