// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class ThemeShadows {
  List<BoxShadow> appBar = [
              BoxShadow(
                  color: Colors.grey[800]!,
                  offset: const Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 0.5)
            ];
}

class ThemeDarkShadows extends ThemeShadows {
  @override
  List<BoxShadow> appBar = [
              BoxShadow(
                  color: Colors.grey[600]!,
                  offset: const Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 0.5)
            ];
}
