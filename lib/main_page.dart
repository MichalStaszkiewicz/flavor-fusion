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
  bool recipeSearchOpened = false;

  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      label: AppStrings.homeTitle,
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: AppStrings.shopListTitle,
      icon: Icon(Icons.shopping_cart_sharp),
    ),
    BottomNavigationBarItem(
      label: AppStrings.favoriteTitle,
      icon: Icon(Icons.favorite),
    ),
  ];

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
                child: Text(AppStrings.shoppingList),
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
