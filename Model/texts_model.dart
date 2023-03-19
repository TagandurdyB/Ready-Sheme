import 'constants_model.dart';
import 'package:flutter/material.dart';
import '/Model/styles_model.dart';

class Texts {
  final Styles themeStyle;
  Texts({required this.themeStyle});
  Text get mainTitle => Text(Worlds.mainTitle, style: themeStyle.appBar);
}
