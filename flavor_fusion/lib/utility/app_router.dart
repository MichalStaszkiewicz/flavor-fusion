import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/app.dart';
import 'package:flavor_fusion/main_page.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/presentation/screens/dish_sort_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/dish_filter_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final String recipeDetailsPath = '/search/recipe_details';
  final String recipeFilter = '/search/filter';
  final String recipeSort = '/search/sort';
  final String rootPath = '/';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: recipeDetailsPath, page: DishDetailsRoute.page),
        AutoRoute(path: recipeFilter, page: DishFilterRoute.page),
        AutoRoute(path: recipeSort, page: DishSortRoute.page),
        AutoRoute(path: rootPath, page: MainRoute.page, initial: true),
      ];
}
