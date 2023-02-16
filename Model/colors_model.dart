// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class ThemeColor {
  Color appBar = Colors.grey[600]!;
  Color text = Colors.black;
  Color canvas = Colors.white;
}

class ThemeDarkColor extends ThemeColor {
  @override
  Color appBar = const Color.fromARGB(255, 66, 66, 66);
  @override
  Color text = Colors.white;
  @override
  Color canvas = const Color.fromARGB(255, 97, 97, 97);
}
