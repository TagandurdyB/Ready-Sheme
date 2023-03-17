// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class ThemeIcon {
  Icon changeMod = const Icon(Icons.mode_night_sharp, color: Colors.black);
}

class ThemeDarkIcon extends ThemeIcon {
  @override
  Icon changeMod = const Icon(Icons.sunny, color: Colors.white);
}
