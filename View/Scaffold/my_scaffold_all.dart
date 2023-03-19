import '/ViewModel/platform_vm.dart';

import '../../ViewModel/size_vm.dart';
import '../../ViewModel/Providers/provider_app_bar.dart';
import '/ViewModel/Providers/provider_theme.dart';
import 'package:flutter/material.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';
import 'my_navigation_bar.dart';
import 'my_navigation_rail.dart';

class ScaffoldAll extends StatelessWidget {
  final Widget? appBarLeading;
  final bool? appBarCenterTitle;
  final List<Widget>? appBarActions;
  final Widget body;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ScaffoldAll({
    this.appBarLeading,
    this.appBarCenterTitle,
    this.appBarActions,
    required this.body,
    super.key,
    this.scaffoldKey,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    MySize().changeSize(size.width, size.height);
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        key: key,
        preferredSize: Size.fromHeight(DistributorAppBar(context).drawerHeight),
        child: Container(
          decoration: BoxDecoration(
            color: DistributorTheme(context).colors.appBar,
            boxShadow: DistributorTheme(context).shadows.appBar,
          ),
          child: Column(
            children: [
              MyAppBar(
                leading: appBarLeading,
                centerTitle: appBarCenterTitle ?? MyPlatform.isMobil,
                actions: appBarActions,
              ),
              Visibility(
                visible: DistributorAppBar(context).bottomDrawer,
                child: Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: buildBottom(),
                )),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Row(
        children: [
          Visibility(
              visible: !MyPlatform.isMobil,
              child: Scrollbar(child: MyNavigationRail(extended: MySize.width >= 800))),
          Visibility(
              visible: !MyPlatform.isMobil,
              child: const VerticalDivider(
                  thickness: 1, width: 1, color: Colors.black)),
          Expanded(child: body),
        ],
      ),
      bottomNavigationBar:
          MyPlatform.isMobil ? const MyBottomNavigationBar() : null,
    );
  }

  Widget buildBottom() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [buildMenueBtn()],
      );

  Widget buildMenueBtn() => Builder(
        builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: DistributorTheme(context).icons.menu),
      );
}
