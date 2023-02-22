import '/View/Scaffold/provider_app_bar.dart';
import 'package:flutter/material.dart';
import '/ViewModel/Providers/provider_theme.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget {
  final Function? funcBackBtn;
  const MyAppBar({super.key, this.funcBackBtn});

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);
    final providerAppbar = DistributorAppBar(context);
    return AppBar(
      leading: providerAppbar.leading,
      /*BackButton(onPressed: () {
        if (funcBackBtn != null) {
          funcBackBtn!();
        } else {
          Navigator.pop(context);
        }
      }),*/
      centerTitle: true,
      title:providerTheme.texts.mainTitle //Text(providerTheme.texts.mainTitle, style: providerTheme.styles.appBar),
    );
  }
}
