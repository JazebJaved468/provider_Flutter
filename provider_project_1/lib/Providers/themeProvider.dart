import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  
  ThemeMode selectedTheme = ThemeMode.light;

  changeTheme(ThemeMode theme) {
    selectedTheme = theme;
    notifyListeners();
  }


  

}