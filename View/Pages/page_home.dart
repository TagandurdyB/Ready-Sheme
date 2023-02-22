import '../Screens/home_screens.dart';
import 'package:flutter/material.dart';

import '../Scaffold/my_scaffold_all.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAll(
      body: HomeScreens()
    );
  }
}
