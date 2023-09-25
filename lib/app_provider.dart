import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  ThemeMode mode=ThemeMode.system;

  changeMode(ThemeMode themeMode){
    mode=themeMode;
    notifyListeners();
  }

}