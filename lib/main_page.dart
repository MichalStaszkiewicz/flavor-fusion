import 'package:auto_route/auto_route.dart';

import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/widgets/custom_app_bar.dart';
import 'package:flavor_fusion/presentation/widgets/favorite_search_bar.dart';

import 'package:flavor_fusion/presentation/widgets/recipe_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/recipes_search_bar_focused.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/app_router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage();

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState with TickerProviderStateMixin {
  final TextEditingController _favoriteSearchController =
      TextEditingController();
  bool recipeSearchOpened = false;

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
    return AutoTabsRouter(
        transitionBuilder: (context, child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
        routes: [RecipesRoute(), ShoppingListRoute(), FavoriteRecipesRoute()],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: ref.watch(searchBarModel).maybeWhen(initial: () {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                ref.read(searchBarModel.notifier).init();
              });

              return null;
            }, orElse: () {
              return null;
            }, ready: (expanded, renderAppBar, animateAppBar) {
              return _buildAppBar(tabsRouter, expanded);
            }),
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

  CustomAppBar _buildAppBar(TabsRouter tabsRouter, bool expanded) {
    if (tabsRouter.activeIndex == 0) {
      return CustomAppBar(
        child: AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          duration: Duration(milliseconds: 250),
          child: Container(
              key: ValueKey(expanded),
              child: expanded ? RecipeSearchBarFocused() : RecipeSearchBar()),
        ),
      );
    } else if (tabsRouter.activeIndex == 1) {
      return CustomAppBar(
        child: AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          duration: Duration(milliseconds: 250),
          child: Container(
              key: ValueKey(expanded),
              child: Center(
                child: Text('Shopping List'),
              )),
        ),
      );
    } else if (tabsRouter.activeIndex == 2) {
      return CustomAppBar(
        child: FavoriteSearchBar(),
      );
    } else {
      return CustomAppBar(
        child: Container(),
      );
    }
  }
}
