import '/View/Scaffold/provider_app_bar.dart';
import '/ViewModel/Providers/provider_theme.dart';
import 'package:flutter/material.dart';
import '/View/Scaffold/my_navigation_bar.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';

class ScaffoldAll extends StatelessWidget {
  final Widget body;
  final Function? funcBackBtn;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ScaffoldAll(
      {required this.body, super.key, this.funcBackBtn, this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        key: key,
        preferredSize: Size.fromHeight(DistributorAppBar(context).drawerHeight),
        child: Container(
          decoration: BoxDecoration(
            color: ProviderTheme().colors.appBar,
            boxShadow: ProviderTheme().shadows.appBar,
          ),
          child: Column(
            children: [
              MyAppBar(funcBackBtn: funcBackBtn),
              Visibility(
                visible: DistributorAppBar(context).bottomDrawer,
                child: Expanded(
                    child: Container(
                  color: ProviderTheme().colors.appBar,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: buildBottom(),
                )),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: body,
      bottomNavigationBar: const MyBottomNavigationBar(),
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
            child: const Icon(Icons.menu)),
      );
}
