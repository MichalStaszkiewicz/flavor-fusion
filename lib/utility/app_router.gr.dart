// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DishDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DishDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DishDetailsScreen(
          name: args.name,
          recipe: args.recipe,
        ),
      );
    },
    DishFilterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DishFilterScreen(),
      );
    },
    FavoriteRecipesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteRecipesPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainPage(),
      );
    },
    RecipeSearchRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecipeSearchPageWrapper(),
      );
    },
    RecipesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecipesPage(),
      );
    },
    SearchDoneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchDonePage(),
      );
    },
    ShoppingListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingListPage(),
      );
    },
  };
}

/// generated route for
/// [DishDetailsScreen]
class DishDetailsRoute extends PageRouteInfo<DishDetailsRouteArgs> {
  DishDetailsRoute({
    required String name,
    required Recipe recipe,
    List<PageRouteInfo>? children,
  }) : super(
          DishDetailsRoute.name,
          args: DishDetailsRouteArgs(
            name: name,
            recipe: recipe,
          ),
          initialChildren: children,
        );

  static const String name = 'DishDetailsRoute';

  static const PageInfo<DishDetailsRouteArgs> page =
      PageInfo<DishDetailsRouteArgs>(name);
}

class DishDetailsRouteArgs {
  const DishDetailsRouteArgs({
    required this.name,
    required this.recipe,
  });

  final String name;

  final Recipe recipe;

  @override
  String toString() {
    return 'DishDetailsRouteArgs{name: $name, recipe: $recipe}';
  }
}

/// generated route for
/// [DishFilterScreen]
class DishFilterRoute extends PageRouteInfo<void> {
  const DishFilterRoute({List<PageRouteInfo>? children})
      : super(
          DishFilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'DishFilterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteRecipesPage]
class FavoriteRecipesRoute extends PageRouteInfo<void> {
  const FavoriteRecipesRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRecipesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecipeSearchPageWrapper]
class RecipeSearchRouteWrapper extends PageRouteInfo<void> {
  const RecipeSearchRouteWrapper({List<PageRouteInfo>? children})
      : super(
          RecipeSearchRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'RecipeSearchRouteWrapper';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecipesPage]
class RecipesRoute extends PageRouteInfo<void> {
  const RecipesRoute({List<PageRouteInfo>? children})
      : super(
          RecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecipesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchDonePage]
class SearchDoneRoute extends PageRouteInfo<void> {
  const SearchDoneRoute({List<PageRouteInfo>? children})
      : super(
          SearchDoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchDoneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingListPage]
class ShoppingListRoute extends PageRouteInfo<void> {
  const ShoppingListRoute({List<PageRouteInfo>? children})
      : super(
          ShoppingListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
