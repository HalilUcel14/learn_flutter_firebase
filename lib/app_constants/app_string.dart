class AppString {
  static AppString? _instance;
  static AppString get instance {
    _instance ??= AppString._init();
    return _instance!;
  }

  AppString._init();

  String flutterProjectTitle = "Learn_Flutter_Firebase";

  String twitterLoginAdd = "hucel_twitters_login_with_firebase";
}
