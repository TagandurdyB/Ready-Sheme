import 'package:flutter/material.dart';

double _screenArentir = 0.0;
double _screenHeight = 0.0;
double _screenWidth = 0.0;

class MySize extends ChangeNotifier {
  static double get arentir => _screenArentir;
  static double get height => _screenHeight;
  static double get width => _screenWidth;

  Size get size => Size(_screenWidth, _screenHeight);

  void changeHeight(double height) {
    _screenHeight = height;
    notifyListeners();
  }

  void changeWidth(double width) {
    _screenWidth = width;
    notifyListeners();
  }

  void changeSize(double width, double height) {
    if (width < height) {
      _screenArentir = width;
    } else {
      _screenArentir = 400;
    }
    _screenHeight = height;
    _screenWidth = width;
    notifyListeners();
  }
}
