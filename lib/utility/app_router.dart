import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/app.dart';
import 'package:flavor_fusion/main_page.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/presentation/screens/favorite_page.dart';

import 'package:flavor_fusion/presentation/screens/recipes_page.dart';
import 'package:flavor_fusion/presentation/screens/shopping_list_page.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/favorite_filter_wrapper.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/favorite_search_wrapper.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/recipe_search_done_wrapper.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/recipe_search_panel_wrapper.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/recipe_search_wrapper.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_bar_panel.dart';
import 'package:flavor_fusion/presentation/widgets/search_done.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';

import '../data/models/recipe.dart';
import '../presentation/screens/dish_filter_screen.dart';
import '../presentation/screens/wrapper/dish_details_wrapper.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            path: RouteName.rootPath,
            page: MainRoute.page,
            children: [
              AutoRoute(
                  initial: true,
                  path: RouteName.recipes_wrapper,
                  page: RecipeSearchRouteWrapper.page,
                  children: [
                    AutoRoute(
                        path: RouteName.recipes,
                        initial: true,
                        page: RecipesRoute.page,
                        children: []),
                    AutoRoute(
                        path: RouteName.recipeSearchPanel,
                        page: RecipeSearchPanelRoute.page),
                    CustomRoute(
                        transitionsBuilder: TransitionsBuilders.fadeIn,
                        path: RouteName.recipeSearchDone,
                        page: SearchDoneRoute.page,
                        children: []),
                    AutoRoute(
                        path: RouteName.recipeDetailsPath,
                        page: DishDetailsRoute.page),
                  ]),
              AutoRoute(
                  path: RouteName.shoppingList, page: ShoppingListRoute.page),
              AutoRoute(
                  path: RouteName.favoriteRecipeWrapper,
                  page: FavoriteSearchAutoRouter.page,
                  children: [
                    AutoRoute(
                        initial: true,
                        path: RouteName.favoriteRecipes,
                        page: FavoriteRecipesRoute.page,
                        children: []),
                    AutoRoute(
                        path: RouteName.favoriteRecipeFilter,
                        page: DishFilterPanel.page),
                    AutoRoute(
                      
                        path: RouteName.recipeDetailsPath,
                        page: DishDetailsRoute.page),
                  ]),
            ]),
      ];
}
