class AppRouter {
  AppRouter({this.currentModule = ""});

  static AppRouter fromModule({String moduleName = ""}) => AppRouter(currentModule: moduleName);

  // static AppRouter fromHomeModule() => AppRouter(currentModule: "/home");
  //
  // static AppRouter toSaleModule() => AppRouter(currentModule: "/home/sales");
  String currentModule = "";

  String get login => "$currentModule/login";
  String get home => "$currentModule/home";

  String get startScreen => "/";

  // String get login => "$currentModule/login";

  static AppRouter check() => AppRouter();

  bool getWhiteStatusBar(String screenName) {
    bool check = false;
    List<String> whiteStatus = [
      // home,
      // documentAddScreen,
    ];
    for (var i in whiteStatus) {
      if (i == screenName) {
        check = true;
      }
      if (check) break;
    }
    return check;
  }
}

