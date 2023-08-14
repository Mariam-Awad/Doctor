class AppGenerateHelper{
  static AppGenerateHelper? _appGenerateHelper;
  AppGenerateHelper._internal();
  static AppGenerateHelper instance(){
    if (_appGenerateHelper == null) {
      return _appGenerateHelper = AppGenerateHelper._internal();
    }
    return _appGenerateHelper!;
  }

  
}