// ignore_for_file: overridden_fields

import 'package:demo1/ViewModel/size_vm.dart';
import 'package:flutter/material.dart';

class ThemeStyle {
  TextStyle appBar =
      TextStyle(color: Colors.black, fontSize: MySize.width * 0.05);
}

class ThemeDarkStyle extends ThemeStyle {
  @override
  TextStyle appBar = TextStyle(fontSize: MySize.width * 0.05);
}
