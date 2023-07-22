import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/main_page.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    locator<Global>().mediaQuery = MediaQuery.of(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'recipe-app',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 53, 219, 2)),
        useMaterial3: true,
      ),
      routerConfig: locator<AppRouter>().config(),
    );
  }
}
