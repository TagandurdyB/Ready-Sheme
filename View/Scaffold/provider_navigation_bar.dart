import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderNavigationBar extends ChangeNotifier {

  int _selectScreen = 0;
  int get selectScreen => _selectScreen;
  void changeScreen(int index) {
    _selectScreen = index;
    notifyListeners();
  }
}

/*=====================================================================================*/

class ProcessNavigationBar {
  final BuildContext context;
  ProcessNavigationBar(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderNavigationBar>(context, listen: false);
  }

  void screenIndex(int index) => _getProvider(context).changeScreen(index);

}

class DistributorNavigationBar {
  final BuildContext context;
  DistributorNavigationBar(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderNavigationBar>(context);
  }
  int get screenIndex => _getProvider(context).selectScreen;
}
