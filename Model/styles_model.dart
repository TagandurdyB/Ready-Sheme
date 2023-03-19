// ignore_for_file: overridden_fields

import 'colors_model.dart';
import 'constants_model.dart';
import 'package:flutter/material.dart';

class Styles {
  final ThemeColor themeColor;
  Styles({required this.themeColor});
  TextStyle get appBar =>
      TextStyle(color: themeColor.text, fontSize: Nums().appBar);
  TextStyle get input =>
      TextStyle(color: themeColor.text, fontSize: Nums().input);
}
