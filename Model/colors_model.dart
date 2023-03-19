// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class ThemeColor {
  Color appBar = Colors.grey[400]!;
  Color appBarIcon = Colors.black;
  Color text = Colors.black;
  Color canvas = const Color(0xffE9EAED);
  Color navigationBg = const Color(0xffF2F2F2);
  Color navigatActiveIcon = const Color(0xffDADADA);
  Color navigatUnactiveIcon = Colors.grey;
}

class ThemeDarkColor extends ThemeColor {
  @override
  Color appBar = const Color.fromARGB(255, 66, 66, 66);
  @override
  Color appBarIcon = Colors.white;
  @override
  Color text = Colors.white;
  @override
  Color canvas = const Color.fromARGB(255, 97, 97, 97);
  @override
  Color navigationBg = const Color.fromARGB(255, 48, 46, 46);
  @override
  Color navigatActiveIcon = Colors.white;
  @override
  Color navigatUnactiveIcon = Colors.grey;
}
