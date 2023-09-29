import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = "en";

  void changeThemeMode(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getBackgroundDark() {
    return isDark()
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }

  void changeLocal(String newLocale) {
    if (currentLocale == newLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
