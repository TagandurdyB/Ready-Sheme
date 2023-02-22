import '/Model/Icons_model.dart';
import '/Model/colors_model.dart';
import '/Model/shadows_model.dart';
import '/Model/styles_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/texts_model.dart';

class ProviderTheme extends ChangeNotifier {
  bool _isLight = false;
  bool get isLight => _isLight;
  void tongleTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }

  ThemeColor get colors => _isLight ? ThemeColor() : ThemeDarkColor();

  ThemeStyle get styles => _isLight ? ThemeStyle() : ThemeDarkStyle();

  ThemeIcon get icons => _isLight ? ThemeIcon() : ThemeDarkIcon();

  ThemeShadows get shadows => _isLight ? ThemeShadows() : ThemeDarkShadows();

  Texts get texts => Texts();

  Brightness get brightness => _isLight ? Brightness.dark : Brightness.light;
}

class ProcessTheme {
  final BuildContext context;
  ProcessTheme(this.context);

  dynamic _changeProvider(BuildContext context) {
    return Provider.of<ProviderTheme>(context, listen: false);
  }

  void get tongleTheme => _changeProvider(context).tongleTheme();
}

class DistributorTheme {
  final BuildContext context;
  DistributorTheme(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderTheme>(context);
  }

  bool get isLight => _getProvider(context).isLight;
  ThemeColor get colors => _getProvider(context).colors;
  ThemeStyle get styles => _getProvider(context).styles;
  ThemeIcon get icons => _getProvider(context).icons;
  ThemeShadows get shadows => _getProvider(context).shadows;
  Texts get texts => _getProvider(context).texts;
  Brightness get brightness => _getProvider(context).brightness;
}
