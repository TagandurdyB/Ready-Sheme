import 'package:demo1/View/Pages/page_home.dart';
import 'package:flutter/material.dart';

import '../View/Pages/page_logo.dart';

class Rout {
  static const String logo = "/LogoPage";
    static const String home = "/HomePage";


  static Map<String, Widget Function(dynamic)> pages = {
    logo: (context) => const LogoPage(),
    home: (context) => const HomePage(),
  };
}
