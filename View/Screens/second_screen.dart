import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Center(child: ElevatedButton(onPressed: () {}, child: const Text("Send"))),
    ]);
  }
}
