import 'package:flutter/material.dart';
import '../../ViewModel/routes_vm.dart';
import '../../ViewModel/size_vm.dart';
import '../../ViewModel/time_vm.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Time.times.logo)
        .then((value) => Navigator.pushReplacementNamed(context, Rout.home));
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    MySize().changeSize(size.width,size.height);
    return Scaffold(
      body: Center(child: buildLogo()),
    );
  }

  Widget buildLogo() => const CircleAvatar(
        child: Icon(Icons.ac_unit_sharp),
      );
}
