// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class LightIconD {
  IconData changeMod = Icons.mode_night_sharp;
  IconData menu = Icons.menu;
}

class DarkIconD extends LightIconD {
  @override
  IconData changeMod = Icons.mode_night_sharp;
}
