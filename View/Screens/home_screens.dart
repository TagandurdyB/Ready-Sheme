import 'package:flutter/material.dart';
import '../../ViewModel/Providers/provider_navigation.dart';
import '/View/Screens/first_screen.dart';
import '/View/Screens/second_screen.dart';

// ignore: must_be_immutable
class HomeScreens extends StatelessWidget {
  HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return buildScreens();
  }

  List<Widget> screens = const [
    FirstScreen(),
    SecondScreen(),
  ];

  Widget buildScreens() {
    return Stack(
      children: List.generate(
          screens.length,
          (index) => Builder(
                builder: (context) => Offstage(
                  offstage:
                      index != DistributorNavigation(context).screenIndex,
                  child: Scaffold(
                    body: screens[index],
                  ),
                ),
              )),
    );
  }
}
