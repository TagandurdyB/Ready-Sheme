import 'package:demo1/Model/colors_model.dart';
import 'package:demo1/Model/shadows_model.dart';
import 'package:demo1/Model/styles_model.dart';
import 'package:flutter/material.dart';

import '../../Model/texts_model.dart';

bool _isLight = false;

class ProviderTheme extends ChangeNotifier {
  bool get isLight => _isLight;
  void tongleTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }

  ThemeColor get colors => _isLight ? ThemeColor() : ThemeDarkColor();

  ThemeStyle get styles => _isLight ? ThemeStyle() : ThemeDarkStyle();

  ThemeShadows get shadows => _isLight ? ThemeShadows() : ThemeDarkShadows();

  Texts get texts => Texts();

  Brightness get brightness => _isLight ? Brightness.light : Brightness.dark;
}
