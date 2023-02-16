import 'package:flutter/material.dart';

double _screenWidth = 0.0;
double _screenHeight = 0.0;

class MySize extends ChangeNotifier {
  static double get width => _screenWidth;
  static double get height => _screenHeight;
  Size get size => Size(_screenWidth, _screenWidth);
  void changeWidth(double width) {
    _screenWidth = width;
    notifyListeners();
  }

  void changeHeight(double height) {
    _screenHeight = height;
    notifyListeners();
  }

  void changeSize(double width, double height) {
    _screenWidth = width;
    _screenHeight = height;
    notifyListeners();
  }
}
