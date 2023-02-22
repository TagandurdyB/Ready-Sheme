import 'package:flutter/material.dart';

import '../Scaffold/provider_app_bar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ProcessAppBar(context).bottomDrawer(true);
        },
        child: const Icon(Icons.home));
  }
}
