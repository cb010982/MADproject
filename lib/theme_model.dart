import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.light, 
    
  );

  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark, 
   
  );

  bool _isDarkTheme = false;

  ThemeData get currentTheme => _isDarkTheme ? _darkTheme : _lightTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}

