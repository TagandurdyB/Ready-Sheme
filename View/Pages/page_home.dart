import 'package:demo1/View/Scaffold/provider_app_bar.dart';
import 'package:flutter/material.dart';

import '../Scaffold/my_scaffold_all.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAll(
      body: GestureDetector(
          onTap: () {
            ProcessAppBar(context).bottomDrawer(true);
          },
          child: const Icon(Icons.home)),
    );
  }
}
