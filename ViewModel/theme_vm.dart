import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Providers/provider_theme.dart';

class MyTheme {
  final BuildContext context;
  MyTheme(this.context);

  ThemeData theme() {
    final providerTheme = Provider.of<ProviderTheme>(context);
    return ThemeData(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(),
      ).apply(
        bodyColor: providerTheme.colors.text,
        // displayColor: Colors.blue,
      ),
      primarySwatch: Colors.blue,
      canvasColor: providerTheme.colors.canvas,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: providerTheme.brightness),
          color: providerTheme.colors.appBar,
          shadowColor: Colors.transparent,
          titleTextStyle: providerTheme.styles.appBar,
          iconTheme: const IconThemeData(
            color: Colors.orange,
          )),
    );
  }
}
