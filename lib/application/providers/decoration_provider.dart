import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:calculator_pj/domain/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DecorationProvider extends ChangeNotifier {
  dynamic currentFont = primaryFont;
  dynamic lightModeCurrentPressShadow = lightModeNotPressedBoxShadow;
  dynamic darkModeCurrentPressShadow = darkModeNotPressedBoxShadow;
  bool isDarkMode = false;

  saveCurrentTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("currentTheme", isDarkMode);
  }

  getCurrentTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool("currentTheme") ?? false;
    notifyListeners();
  }

  changeFont(value) {
    currentFont = value;
    notifyListeners();
  }

  switchCurrentTheme() {
    isDarkMode = !isDarkMode;
    saveCurrentTheme();
    notifyListeners();
  }

  switchCurrentPressShadow() {
    if (isDarkMode) {
      darkModeCurrentPressShadow == darkModeNotPressedBoxShadow
          ? darkModeCurrentPressShadow = darkModePressedBoxShadow
          : darkModeCurrentPressShadow = darkModeNotPressedBoxShadow;
    } else {
      lightModeCurrentPressShadow == lightModeNotPressedBoxShadow
          ? lightModeCurrentPressShadow = lightModePressedBoxShadow
          : lightModeCurrentPressShadow = lightModeNotPressedBoxShadow;
    }
    notifyListeners();
  }
}
