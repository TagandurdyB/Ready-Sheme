import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderAppBar extends ChangeNotifier {
  Widget? _leading;
  Widget? get leading => _leading;

  void changeLeading(Widget? lead) {
    _leading = lead;
    notifyListeners();
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  void changeDrawer(bool situation) {
    _drawer = situation;
    notifyListeners();
  }

  bool _bottomDrawer = false;
  bool get bottomDrawer => _bottomDrawer;
  void changeBottomDrawer(bool situation) {
    _bottomDrawer = !_bottomDrawer; //situation;
    if (_bottomDrawer) {
      _leading = null;
      _bottomHeight = kToolbarHeight + (kToolbarHeight * 0.5);
    } else {
      if (!_drawer) {
        _leading = const BackButton();
      }
      _bottomHeight = kToolbarHeight;
    }
    notifyListeners();
  }

  double _bottomHeight = kToolbarHeight;
  double get bottomHeight => _bottomHeight;
}

/*=====================================================================================*/

class ProcessAppBar {
  final BuildContext context;
  ProcessAppBar(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderAppBar>(context, listen: false);
  }

  void leading(Widget? lead) => _getProvider(context).changeLeading(lead);
  void drawer(bool situation) => _getProvider(context).changeDrawer(situation);
  void bottomDrawer(bool situation) =>
      _getProvider(context).changeBottomDrawer(situation);
}

class DistributorAppBar {
  final BuildContext context;
  DistributorAppBar(this.context);

  dynamic _getProvider(BuildContext context) {
    return Provider.of<ProviderAppBar>(context);
  }

  Widget? get leading => _getProvider(context).leading;
  bool get drawer => _getProvider(context).drawer;
  bool get bottomDrawer => _getProvider(context).bottomDrawer;
  double get drawerHeight => _getProvider(context).bottomHeight;
}
