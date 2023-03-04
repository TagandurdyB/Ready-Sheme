import 'package:flutter/material.dart';
import 'package:telfun/View/Scaffold/my_scaffold_all.dart';
import 'package:telfun/View/Widgets/my_container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAll(
        body: MyContainer(
      color: Colors.transparent,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const [
          Text(
            "Barada",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Bu prilaženiýa Tagandurdy Baýramdurdyýew Mekanowiç tarapyndan ýasaldy.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    ));
  }
}
