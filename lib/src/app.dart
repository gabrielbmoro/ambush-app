import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'core/settings/theme/app_theme.dart';
import 'core/presenter/routes/app_route.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF018786);

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;
        if (lightDynamic != null && darkDynamic != null) {
          lightColorScheme = lightDynamic.harmonized();
          darkColorScheme = darkDynamic.harmonized();
        } else {
          lightColorScheme = ColorScheme.fromSeed(
            seedColor: primaryColor,
          );
          darkColorScheme = ColorScheme.fromSeed(
            seedColor: primaryColor,
            brightness: Brightness.dark,
          );
        }
        return MaterialApp.router(
          title: 'InvoiceGen',
          routerConfig: _appRouter.config(),
          theme: getLightTheme(lightColorScheme, context),
          darkTheme: getDarkTheme(darkColorScheme, context),
        );
      },
    );
  }
}
