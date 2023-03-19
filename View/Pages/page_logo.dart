import 'package:flutter/material.dart';
import '/View/Widgets/my_container.dart';
import '/ViewModel/Providers/provider_theme.dart';

import '/ViewModel/time_vm.dart';
import '/ViewModel/routes_vm.dart';
import '/ViewModel/size_vm.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Time.times.logo).then((value) {
      if (_selectedIndex != 5) _goHome;
    });
  }

  void get _goHome => Navigator.pushReplacementNamed(context, Rout.home);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    MySize().changeSize(size.width, size.height);
    return Scaffold(
      body: Stack(
        children: [
          buildSifr(),
          Center(child: buildLogo()),
          Visibility(
            visible: _selectedIndex == 5,
            child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: DistributorTheme(context).texts.avtor),
          ),
        ],
      ),
    );
  }

  Widget buildSifr() {
    return Wrap(
        children: List.generate(
            4,
            (index) => MyContainer(
                  onTap: () => _sifrFunc(index),
                  color: Colors.transparent,
                  width: MySize.width * 0.5,
                  height: MySize.height * 0.5,
                  borderColor: Colors.transparent,
                )));
  }

  void _sifrFunc(int index) {
    if (_selectedIndex != 5) {
      if (index == _selectedIndex) {
        _selectedIndex++;
        setState(() {});
      } else {
        {
          _selectedIndex = 0;
        }
      }
     // debugPrint("+++++++++++++++++++++$_selectedIndex");
    }
  }

  Widget buildLogo() => GestureDetector(
        onTap: () => _sifrFunc(4),
        onDoubleTap: () => _goHome,
        child: const CircleAvatar(
          maxRadius: 70,
          child: Icon(
            Icons.ac_unit_sharp,
            size: 40,
          ),
        ),
      );
}
