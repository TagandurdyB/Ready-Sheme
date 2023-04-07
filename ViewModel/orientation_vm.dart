import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyOrientation {
  final BuildContext context;
  MyOrientation(this.context);
 
  static void systemUiOverlayStyle() async {
    setPortraitUp();
     SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );
  }

  static void setPortraitUp() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static void setLandscape() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      //DeviceOrientation.portraitUp,
    ]);
  }

}