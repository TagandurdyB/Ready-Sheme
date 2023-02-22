import '/ViewModel/Providers/provider_theme.dart';
import 'package:flutter/material.dart';

import '../../ViewModel/routes_vm.dart';
import '../../ViewModel/size_vm.dart';
import '../Widgets/draw_bar_btn.dart';
import '../Widgets/my_container.dart';

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  final Widget? title;
  MyDrawer({
    super.key,
    this.title,
  });

  late BuildContext contextM;

  @override
  Widget build(BuildContext context) {
    contextM = context;
    return Drawer(
      child: Column(children: [
        Container(
          color: const Color(0xff7262DF),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
        ),
        title ?? const SizedBox(),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  DrawBarBtn(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Rout.home, (route) => false);
                    },
                    //  titleLeft: SWi * 0.15,
                    leading: draverIcon(Icons.home),
                    title: const Text("Baş sahypa"),
                    trailing: IconButton(
                        onPressed: () {
                          ProcessTheme(context).tongleTheme;
                        },
                        icon: DistributorTheme(context).icons.changeMod),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }

  Widget draverIcon(IconData icon) {
    final double sizeWidth = MySize.width;
    return MyContainer(
        shape: sizeWidth * 0.02,
        borderColor: const Color(0xff9245FF),
        borderWidth: sizeWidth * 0.003,
        width: sizeWidth * 0.11,
        height: sizeWidth * 0.11,
        color: DistributorTheme(contextM).colors.canvas,
        child: Icon(
          icon,
          color: const Color(0xff6A00FF),
          size: sizeWidth * 0.08,
        ));
  }
}
