import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/app.dart';
import 'package:flavor_fusion/main_page.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/presentation/widgets/search_done.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';

import '../data/models/recipe.dart';
import '../presentation/screens/dish_filter_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: RouteName.rootPath,
            page: MainRoute.page,
            initial: true,
            children: [
              AutoRoute(
                  path: RouteName.recipeFilter, page: DishFilterRoute.page),
              AutoRoute(
                  path: RouteName.recipeSearchDone,
                  page: SearchDoneRoute.page,
                  children: [
                    AutoRoute(
                        path: RouteName.recipeDetailsPath,
                        page: DishDetailsRoute.page),
                  ]),
            ]),
      ];
}
