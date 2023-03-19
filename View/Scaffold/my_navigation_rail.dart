import 'package:flutter/material.dart';
import '/ViewModel/Providers/provider_navigation.dart';

import '../../Model/constants_model.dart';
import '../../ViewModel/Providers/provider_theme.dart';

class MyNavigationRail extends StatefulWidget {
  final bool extended;
  const MyNavigationRail({super.key,required this.extended});

  @override
  State<MyNavigationRail> createState() => _MyMyNavigationRailState();
}

class _MyMyNavigationRailState extends State<MyNavigationRail> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
    //  minWidth: 300,
      useIndicator: true,
      indicatorColor: const Color(0xffDC5024),
      extended: widget.extended,
      elevation: 5,
      backgroundColor: DistributorTheme(context).colors.navigationBg,
      selectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatActiveIcon),
      unselectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatUnactiveIcon),
      selectedIndex: _selectIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectIndex = index;
        });
        ProcessNavigation(context).screenIndex(index);
      },

      // type: BottomNavigationBarType.fixed,
      // unselectedItemColor: Colors.grey[400],
      // selectedItemColor: Colors.white,
      destinations: List.generate(
          Worlds().navigation.length,
          (index) => NavigationRailDestination(
              icon: DistributorTheme(context).icons.navigationU[index],
              selectedIcon: DistributorTheme(context).icons.navigationS[index],
              label: Text(DistributorTheme(context).worlds.navigation[index]))),
    );
  }
}
