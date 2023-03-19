// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

/*class RIEl {
  final int index;
  final TextEditingController controler;
  RIEl({this.index, this.controler});
}*/

Map<String, TextEditingController> ReadyInputBase = {};

class RIBase {
  static String getText(String tag) {
    if (ReadyInputBase[tag] == null) {
      return "";
    } else {
      return ReadyInputBase[tag]!.text;
    }
  }

  static TextEditingController getControl(String tag) {
    if (ReadyInputBase[tag] == null) {
      return TextEditingController();
    } else {
      return ReadyInputBase[tag]!;
    }
  }

  static void changeDate(String tag, TextEditingController control) {
    ReadyInputBase.addAll({tag: control});
  }

  static bool isEmpety(String tag) {
    if (ReadyInputBase[tag] == null) {
      return true;
    } else if (ReadyInputBase[tag]!.text == "") {
      return true;
    } else {
      return false;
    }
  }

  static void eraseDate(String tag) {
    ReadyInputBase.addAll({tag: TextEditingController()});
  }
}
