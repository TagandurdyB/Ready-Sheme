import 'package:demo1/View/Scaffold/provider_app_bar.dart';
import 'package:demo1/ViewModel/Providers/provider_theme.dart';
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
  ];
}
