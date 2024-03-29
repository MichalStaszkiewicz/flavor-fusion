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
    DishDetailsAutoRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DishDetailsWrapper(),
      );
    },
    DishFilterPanel.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DishFilterScreen(),
      );
    },
    FavoriteFilterAutoRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteFilterWrapper(),
      );
    },
    FavoriteRecipesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteRecipesPage(),
      );
    },
    FavoriteSearchAutoRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteSearchWrapper(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainPage(),
      );
    },
    RecipeSearchPanelRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeSearchPanelRouteArgs>(
          orElse: () => const RecipeSearchPanelRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecipeSearchBarPanel(key: args.key),
      );
    },
    RecipeSearchDoneAutoRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecipeSearchDoneWrapper(),
      );
    },
    RecipeSearchRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecipeSearchPageWrapper(),
      );
    },
    RecipeSearchPanelAutoRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecipeSearchPanelWrapper(),
      );
    },
    RecipesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecipesPage(),
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
/// [DishDetailsWrapper]
class DishDetailsAutoRouter extends PageRouteInfo<void> {
  const DishDetailsAutoRouter({List<PageRouteInfo>? children})
      : super(
          DishDetailsAutoRouter.name,
          initialChildren: children,
        );

  static const String name = 'DishDetailsAutoRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DishFilterScreen]
class DishFilterPanel extends PageRouteInfo<void> {
  const DishFilterPanel({List<PageRouteInfo>? children})
      : super(
          DishFilterPanel.name,
          initialChildren: children,
        );

  static const String name = 'DishFilterPanel';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteFilterWrapper]
class FavoriteFilterAutoRouter extends PageRouteInfo<void> {
  const FavoriteFilterAutoRouter({List<PageRouteInfo>? children})
      : super(
          FavoriteFilterAutoRouter.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteFilterAutoRouter';

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
/// [FavoriteSearchWrapper]
class FavoriteSearchAutoRouter extends PageRouteInfo<void> {
  const FavoriteSearchAutoRouter({List<PageRouteInfo>? children})
      : super(
          FavoriteSearchAutoRouter.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteSearchAutoRouter';

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
/// [RecipeSearchBarPanel]
class RecipeSearchPanelRoute extends PageRouteInfo<RecipeSearchPanelRouteArgs> {
  RecipeSearchPanelRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RecipeSearchPanelRoute.name,
          args: RecipeSearchPanelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RecipeSearchPanelRoute';

  static const PageInfo<RecipeSearchPanelRouteArgs> page =
      PageInfo<RecipeSearchPanelRouteArgs>(name);
}

class RecipeSearchPanelRouteArgs {
  const RecipeSearchPanelRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RecipeSearchPanelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RecipeSearchDoneWrapper]
class RecipeSearchDoneAutoRouter extends PageRouteInfo<void> {
  const RecipeSearchDoneAutoRouter({List<PageRouteInfo>? children})
      : super(
          RecipeSearchDoneAutoRouter.name,
          initialChildren: children,
        );

  static const String name = 'RecipeSearchDoneAutoRouter';

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
/// [RecipeSearchPanelWrapper]
class RecipeSearchPanelAutoRouter extends PageRouteInfo<void> {
  const RecipeSearchPanelAutoRouter({List<PageRouteInfo>? children})
      : super(
          RecipeSearchPanelAutoRouter.name,
          initialChildren: children,
        );

  static const String name = 'RecipeSearchPanelAutoRouter';

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
