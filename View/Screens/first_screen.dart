import 'package:audio/ViewModel/Providers/provider_theme.dart';
import 'package:audio/ViewModel/size_vm.dart';
import 'package:flutter/material.dart';

import '../Widgets/my_container.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double pad1 = 0, pad2 = 0, pad3 = 0, pad4 = 0, pad5 = 0;

final double paddConst=25;

  List<Color> colors = [Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    final double arentir = MySize.arentir;
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    pad1=pad1 == 0 ? paddConst : 0;
                  });
                },
                child: const Text("1")),
            ElevatedButton(onPressed: () {
               setState(() {
                    pad2=pad2 == 0 ? paddConst : 0;
                  });
            }, child: const Text("2")),
            ElevatedButton(onPressed: () {
               setState(() {
                    pad3=pad3 == 0 ? paddConst : 0;
                  });
            }, child: const Text("3")),
            ElevatedButton(onPressed: () {
               setState(() {
                    pad4=pad4 == 0 ? paddConst : 0;
                  });
            }, child: const Text("4")),
            ElevatedButton(onPressed: () {
               setState(() {
                    pad5=pad5 == 0 ? paddConst : 0;
                  });
            }, child: const Text("5")),
          ],
        ),
        Expanded(
          child: MyContainer(
            duration: const Duration(microseconds: 1000),
            colors: colors,
            // color: colors[1],
            alignment: Alignment.topCenter,
            child: Container(
              alignment: Alignment.center,
              width: MySize.width,
              height: MySize.width,
              child: buildAnimCorona(
                color: Colors.blue[300],
                radius: 350,
                duration: 400,
                padd: pad5,
                child: buildAnimCorona(
                  color: Colors.blue[400],
                  radius: 300,
                  duration: 300,
                  padd: pad4,
                  child: buildAnimCorona(
                    color: Colors.blue[500],
                    radius: 250,
                    duration: 200,
                    padd: pad3,
                    child: buildAnimCorona(
                      color: Colors.blue[600],
                      radius: 200,
                      duration: 100,
                      padd: pad2,
                      child: MyContainer(
                        duration: const Duration(milliseconds: 150),
                          onTap: () {
                            setState(() {
                              if (pad1 == 0) {
                                pad1 = 20;
                              } else {
                                pad1 = 0;
                              }
                            });
                          },
                          boxShadow: DistributorTheme(context).shadows.all,
                          colors: [Colors.green, Colors.green[800]!],
                          width: arentir * 0.4-pad1,
                          height: arentir * 0.4-pad1,
                          shape: arentir * 0.3,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(Icons.brightness_5_outlined,
                                  size: arentir * 0.3, color: Colors.white),
                              Icon(
                                Icons.brightness_5_outlined,
                                size: arentir * 0.25,
                                color: Colors.red,
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAnimCorona({
    child,
    color,
    required double radius,
    required double padd,
    required int duration,
  }) {
    return MyContainer(
      width: null,
      height: null,
      //alignment: Alignment.center,
      color: color,
      shape: radius,
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.all(padd),
      child: child,
    );
  }
}
