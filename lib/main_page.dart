import 'package:auto_route/auto_route.dart';

import 'package:flavor_fusion/presentation/widgets/recipe_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/recipes_search_bar_focused.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../../../data/models/grocery.dart';
import '../../../data/models/ingredient.dart';
import '../../../data/models/nutriens_per_serving.dart';
import '../../../data/models/nutrional_info.dart';
import '../../../data/models/recipe.dart';
import '../../../data/models/request_status.dart';
import '../../../data/source/local/hive_data_provider.dart';
import 'presentation/screens/favorite_page.dart';
import 'presentation/screens/shopping_list_page.dart';
import 'presentation/screens/recipes_page.dart';
import '../../../presentation/view_models/favorite/favorite_view_model.dart';
import '../../../presentation/view_models/recipes/recipes_view_model.dart';
import '../../../presentation/widgets/recipe_group.dart';
import '../../../utility/app_router.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage();

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState with TickerProviderStateMixin {
  final TextEditingController _favoriteSearchController =
      TextEditingController();

  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      label: homeTitle,
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: shopListTitle,
      icon: Icon(Icons.shopping_cart_sharp),
    ),
    BottomNavigationBarItem(
      label: favoriteTitle,
      icon: Icon(Icons.favorite),
    ),
  ];

  // Opacity _buildFavoriteSearchFocused() {
  //   return Opacity(
  //     opacity: _opacityAnimation.value,
  //     child: TextField(
  //       autofocus: true,
  //       onSubmitted: (search) {
  //         _opacityController.forward().then((value) {
  //           _favoriteSearchFocused = !_favoriteSearchFocused;
  //           _opacityController.reverse();
  //         });
  //       },
  //       onTapOutside: (ptr) {
  //         _opacityController.forward().then((value) {
  //           _favoriteSearchFocused = !_favoriteSearchFocused;
  //           _opacityController.reverse();
  //         });
  //       },
  //       onChanged: (search) {
  //         ref.watch(favoriteViewModel.notifier).searchRecipies(search);
  //       },
  //       controller: _favoriteSearchController,
  //     ),
  //   );
  // }

  // Opacity _buildFavoriteSearch() {
  //   return Opacity(
  //     opacity: _opacityAnimation.value,
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: Container(
  //             alignment: Alignment.centerLeft,
  //             child: GestureDetector(
  //               onTap: () {
  //                 _opacityController.forward().then((value) {
  //                   _favoriteSearchFocused = !_favoriteSearchFocused;
  //                   _opacityController.reverse();
  //                 });
  //               },
  //               child: Icon(Icons.search),
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Container(
  //             child: Center(
  //               child: Text(
  //                 _appBarTitles[_currentScreen],
  //                 style: Theme.of(context).textTheme.titleMedium,
  //               ),
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Container(
  //             alignment: Alignment.centerRight,
  //             child: GestureDetector(
  //               onTap: () {
  //                 context.router.push(DishFilterRoute());
  //               },
  //               child: const Icon(Icons.filter_1),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Opacity _buildRecipesSearch() {
  //   return Opacity(
  //     opacity: _opacityAnimation.value,
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: Container(
  //             alignment: Alignment.centerLeft,
  //             child: GestureDetector(
  //               onTap: () {
  //                 ref.watch(recipesViewModel).maybeWhen(
  //                       recommendation: (recipes) {
  //                         _opacityController.forward().then((value) {
  //                           ref
  //                               .read(recipesViewModel.notifier)
  //                               .initSearchRecipe(
  //                                   _recipesSearchController.text);
  //                           _recipesSearchFocused = !_recipesSearchFocused;
  //                           _opacityController.reverse();
  //                         });
  //                       },
  //                       search: (_, __, ___, ____, _____, ______, _______) => {
  //                         _opacityController.forward().then((value) {
  //                           _recipesSearchFocused = !_recipesSearchFocused;
  //                           _opacityController.reverse();
  //                         })
  //                       },
  //                       searchDone: (recipes, search, _) {
  //                         _opacityController.forward().then((value) {
  //                           ref
  //                               .read(recipesViewModel.notifier)
  //                               .initSearchRecipe(
  //                                   _recipesSearchController.text);
  //                           _recipesSearchFocused = !_recipesSearchFocused;
  //                           _opacityController.reverse();
  //                         });
  //                       },
  //                       orElse: () => {},
  //                     );
  //               },
  //               child: Icon(Icons.search),
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Container(
  //             child: Center(
  //               child: Text(
  //                 _appBarTitles[_currentScreen],
  //                 style: Theme.of(context).textTheme.titleMedium,
  //               ),
  //             ),
  //           ),
  //         ),
  //         Expanded(child: Container()),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return AutoTabsRouter(
        transitionBuilder: (context, child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
        routes: [RecipesRoute(), ShoppingListRoute(), FavoriteRecipesRoute()],
        builder: (context, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(tabsRouter),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              currentIndex: tabsRouter.activeIndex,
              items: _bottomNavItems,
            ),
            body: child,
          );
        });
  }

  AppBar _buildAppBar(TabsRouter tabsRouter) {
    if (tabsRouter.activeIndex == 0) {
      return AppBar(
          automaticallyImplyLeading: false,
          title: ref.watch(recommendedRecipesViewModel).maybeWhen(
                orElse: () => Container(),
                ready: ((recipes, searchOpened) {
                  if (searchOpened) {
                    return RecipeSearchBarFocused();
                  } else {
                    return RecipeSearchBar();
                  }
                }),
              ));
    } else {
      return AppBar();
    }
  }
}
