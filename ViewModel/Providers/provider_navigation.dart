import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderNavigation extends ChangeNotifier {

  int _selectScreen = 0;
  int get selectScreen => _selectScreen;
  void changeScreen(int index) {
    _selectScreen = index;
    notifyListeners();
  }
}

/*=====================================================================================*/

class ProcessNavigation {
  final BuildContext context;
  ProcessNavigation(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderNavigation>(context, listen: false);
  }

  void screenIndex(int index) => _getProvider(context).changeScreen(index);

}

class DistributorNavigation {
  final BuildContext context;
  DistributorNavigation(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderNavigation>(context);
  }
  int get screenIndex => _getProvider(context).selectScreen;
}
