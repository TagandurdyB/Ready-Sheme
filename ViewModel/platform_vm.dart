import 'package:flutter/foundation.dart';

class MyPlatform {
  static bool isAndroid = defaultTargetPlatform == TargetPlatform.android;
  static bool isIOS = defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isMobil => isAndroid || isIOS;

  static bool isWin = defaultTargetPlatform == TargetPlatform.windows;
  static bool isMac = defaultTargetPlatform == TargetPlatform.macOS;
  static bool isLinux = defaultTargetPlatform == TargetPlatform.linux;
  static bool get isDesktop => isWin || isMac || isLinux;

  static bool isWeb = kIsWeb;

  static String _osName() {
    if (isWeb) {
      return "WEB";
    } else if (isAndroid) {
      return "ANDROID";
    } else if (isIOS) {
      return "IOS";
    } else if (isMac) {
      return "MacOS";
    } else if (isWin) {
      return "WINDOWS";
    } else {
      return "LINUX";
    }
  }

  static String get osName => _osName();

  static Map<String, bool> get osDetal => {
        "isAndroid": isAndroid,
        "isIOS": isIOS,
        "isMobil": isMobil,
        "isWin": isWin,
        "isMac": isMac,
        "isLinux": isLinux,
        "isDesktop": isDesktop,
        "isWeb": isWeb
      };
}
