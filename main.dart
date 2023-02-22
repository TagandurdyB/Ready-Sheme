import '/ViewModel/Providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ViewModel/routes_vm.dart';
import 'ViewModel/theme_vm.dart';

void main() {
  runApp(MultiProvider(providers: MyProvoders.list, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme(context).theme(),
      initialRoute: Rout.logo,
      routes: Rout.pages,
    );
  }
}
