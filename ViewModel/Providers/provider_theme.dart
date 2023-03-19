import '/Model/icons_model.dart';

import '../../Model/constants_model.dart';
import '/Model/icon_data_model.dart';

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

  LightIconD get iconDatas => _isLight ? LightIconD() : DarkIconD();

  ThemeIcon get icons => ThemeIcon(themeIcon: iconDatas, themeColor: colors);

  Styles get styles => Styles(themeColor: colors);

  Texts get texts => Texts(themeStyle: styles);

  Worlds get worlds => Worlds();

  Nums get nums => Nums();

  ThemeShadows get shadows => _isLight ? ThemeShadows() : ThemeDarkShadows();

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
  ThemeColor get iconDs => _getProvider(context).iconDatas;

  ThemeIcon get icons => _getProvider(context).icons;
  Styles get styles => _getProvider(context).styles;
  Texts get texts => _getProvider(context).texts;

  Worlds get worlds => _getProvider(context).worlds;
  Nums get nums => _getProvider(context).nums;

  ThemeShadows get shadows => _getProvider(context).shadows;
  Brightness get brightness => _getProvider(context).brightness;
}
