import 'package:flutter/material.dart';

double _screenArentir = 0.0;
double _screenHeight = 0.0;
double _screenWidth = 0.0;
bool _screenLandscape = false;
bool _screenPortrait = false;

class MySize extends ChangeNotifier {
  static double get arentir => _screenArentir;
  static double get height => _screenHeight;
  static double get width => _screenWidth;
  static Size get size => Size(_screenWidth, _screenHeight);

  static bool get isLandscape => _screenLandscape;
  static bool get isPortrait => _screenPortrait;

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
      _screenLandscape = false;
      _screenPortrait = true;
    } else {
      _screenArentir = 400;
      _screenLandscape = true;
      _screenPortrait = false;
    }
    _screenHeight = height;
    _screenWidth = width;
    notifyListeners();
  }
}
