import 'package:flavor_fusion/theme.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    locator<Global>().mediaQuery = MediaQuery.of(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flavor Fusion',
      theme:lightTheme,
      themeMode: ThemeMode.system,
      routerConfig: locator<AppRouter>().config(),
    );
  }
}
