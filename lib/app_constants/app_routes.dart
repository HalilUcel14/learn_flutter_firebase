import 'package:flutter/material.dart';
import 'package:learn_flutter_firebase/main.dart';

class AppRoutes {
  static AppRoutes? _instance;
  static AppRoutes get instance {
    _instance ??= AppRoutes._init();
    return _instance!;
  }

  AppRoutes._init();

  static const String initRoute = "/";

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    initRoute: (context) => const MyHomePage(title: "title"),
  };
}
