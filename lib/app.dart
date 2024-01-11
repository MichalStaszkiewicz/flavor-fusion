import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/nutriens_per_serving.dart';
import 'package:flavor_fusion/data/models/nutrional_info.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/theme.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/navigation_observer.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:hive/hive.dart';

class App extends ConsumerWidget {
  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeMode themeMode = ThemeMode.system;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(searchBarModel.notifier).init();
    });

    final _appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: themeMode == ThemeMode.dark ? darkTheme : lightTheme,
      themeMode: themeMode,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [NavigationObserver(ref: ref)],
      ),
    );
  }
}
