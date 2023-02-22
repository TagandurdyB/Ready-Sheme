import 'package:synag/View/Scaffold/provider_navigation_bar.dart';

import '/View/Scaffold/provider_app_bar.dart';
import '/ViewModel/Providers/provider_theme.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class MyProvoders {
  static List<SingleChildWidget> get list => [
    ChangeNotifierProvider<ProviderTheme>(
      create:(context)=> ProviderTheme(),
    ),
    ChangeNotifierProvider<ProviderAppBar>(
      create:(context)=> ProviderAppBar(),
    ),
    ChangeNotifierProvider<ProviderNavigationBar>(
      create:(context)=> ProviderNavigationBar(),
    ),
  ];
}
