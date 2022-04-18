import 'package:flutter/material.dart';

class AppThemes {
  static AppThemes? _instance;
  static AppThemes get instance {
    _instance ??= AppThemes._init();
    return _instance!;
  }

  AppThemes._init();

  ThemeData get themes => ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
