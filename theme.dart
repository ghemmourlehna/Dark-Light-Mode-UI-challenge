import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      // Ajoutez d'autres styles de texte
    ),
    // Définissez d'autres propriétés pour le thème clair
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueAccent,
    backgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      // Ajoutez d'autres styles de texte
    ),
    // Définissez d'autres propriétés pour le thème sombre
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    if (_currentTheme == AppThemes.lightTheme) {
      _currentTheme = AppThemes.darkTheme;
    } else {
      _currentTheme = AppThemes.lightTheme;
    }
    notifyListeners();
  }
}
