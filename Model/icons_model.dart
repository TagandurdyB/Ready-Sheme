// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import '/Model/colors_model.dart';
import '/Model/icon_data_model.dart';

class ThemeIcon {
  final LightIconD? themeIcon;
  final ThemeColor? themeColor;
  ThemeIcon({this.themeIcon, this.themeColor});
  Icon get changeMod => Icon(themeIcon!.changeMod, color: themeColor!.text);
  Icon get menu => Icon(themeIcon!.menu, color: themeColor!.appBarIcon);

  Icon get homeU => const Icon(Icons.home);
  Icon get homeS => const Icon(Icons.home_rounded);

  Icon get exploreU => const Icon(Icons.explore_outlined);
  Icon get exploreS => const Icon(Icons.explore);

  Icon get addU => const Icon(Icons.add_circle_outline);
  Icon get addS => const Icon(Icons.add_circle);

  Icon get subscriptionsU => const Icon(Icons.subscriptions_outlined);
  Icon get subscriptionsS => const Icon(Icons.subscriptions);

  Icon get libraryU => const Icon(Icons.video_library_outlined);
  Icon get libraryS => const Icon(Icons.video_library);

  List<Icon> get navigationU =>
      [homeU, exploreU, addU, subscriptionsU, libraryU];

  List<Icon> get navigationS =>
      [homeS, exploreS, addS, subscriptionsS, libraryS];
}
