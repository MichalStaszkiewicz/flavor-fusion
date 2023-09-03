import 'package:auto_route/auto_route.dart';
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
import '../../../presentation/screens/favorite_screen.dart';
import '../../../presentation/screens/groceries_screen.dart';
import '../../../presentation/screens/recipes_screen.dart';
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
  final TextEditingController _recipesSearchController = TextEditingController();
  final TextEditingController _favoriteSearchController = TextEditingController();
  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;
  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: "Shop List",
      icon: Icon(Icons.shopping_cart_sharp),
    ),
    BottomNavigationBarItem(
      label: "Favorite",
      icon: Icon(Icons.favorite),
    ),
  ];
  final List<Widget> _screens = const [
    RecipesScreen(),
    GroceriesScreen(),
    FavoriteScreen()
  ];
  final List<String> _appBarTitles = const [
    'Home',
    "Shopping List",
    "Favorite"
  ];
  bool _recipesSearchFocused = false;
  bool _favoriteSearchFocused = false;

  int _currentScreen = 0;

  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();

    Hive.registerAdapter(RecipeAdapter());
    Hive.registerAdapter(IngredientAdapter());
    Hive.registerAdapter(NutrientsPerServingAdapter());
    Hive.registerAdapter(NutrionalInfoAdapter());

    locator<HiveDataProvider<Recipe>>().initHive();

    _opacityController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));

    _opacityAnimation = Tween<double>(begin: 1, end: 0).animate(_opacityController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _opacityController.dispose();
    _favoriteSearchController.dispose();
    super.dispose();
  }

  Widget _buildAppBar() {
    if (_currentScreen == 0) {
      return _recipesSearchFocused == false ? _buildRecipesSearch() : _buildRecipesSearchFocused();
    }
    if (_currentScreen == 2) {
      return _favoriteSearchFocused == false ? _buildFavoriteSearch() : _buildFavoriteSearchFocused();
    } else {
      return _buildGroceryAppBar();
    }
  }

  Row _buildGroceryAppBar() {
    return Row(
      children: [
        Expanded(child: Container()),
        Expanded(
          flex: 8,
          child: Container(
            child: Center(
              child: Text(
                _appBarTitles[_currentScreen],
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Opacity _buildFavoriteSearchFocused() {
    return Opacity(
      opacity: _opacityAnimation.value,
      child: TextField(
        autofocus: true,
        onSubmitted: (search) {
          _opacityController.forward().then((value) {
            _favoriteSearchFocused = !_favoriteSearchFocused;
            _opacityController.reverse();
          });
        },
        onTapOutside: (ptr) {
          _opacityController.forward().then((value) {
            _favoriteSearchFocused = !_favoriteSearchFocused;
            _opacityController.reverse();
          });
        },
        onChanged: (search) {
          ref.watch(favoriteViewModel.notifier).searchRecipies(search);
        },
        controller: _favoriteSearchController,
      ),
    );
  }

  Opacity _buildFavoriteSearch() {
    return Opacity(
      opacity: _opacityAnimation.value,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  _opacityController.forward().then((value) {
                    _favoriteSearchFocused = !_favoriteSearchFocused;
                    _opacityController.reverse();
                  });
                },
                child: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  _appBarTitles[_currentScreen],
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  context.router.push(DishFilterRoute());
                },
                child: const Icon(Icons.filter_1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Opacity _buildRecipesSearchFocused() {
    return Opacity(
      opacity: _opacityAnimation.value,
      child: TextField(
        focusNode: _focusNode,
        autofocus: true,
        decoration: InputDecoration(
          prefixIcon: Container(
            alignment: Alignment.centerLeft,
            width: 20,
            child: GestureDetector(
              onTap: () {
                _opacityController.forward().then((value) {
                  _recipesSearchFocused = !_recipesSearchFocused;
                  _opacityController.reverse();
                });
                _focusNode.nearestScope!.unfocus();
                ref.read(recipesViewModel.notifier).loadRecipeRecommendation();
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              _opacityController.forward().then((value) {
                _recipesSearchFocused = !_recipesSearchFocused;
                _opacityController.reverse();
              });
              _focusNode.nearestScope!.unfocus();
              ref.read(recipesViewModel).maybeWhen(
                    orElse: () => {},
                    search: (_, __, ___, ____, _____, ______, _______) {
                      ref.read(recipesViewModel.notifier).findRecipes();
                    },
                  );
            },
            child: _buildRecipesSearchSuffix(),
          ),
          hintText: 'Type ingredient or recipe',
          hintStyle: Theme.of(context).textTheme.labelMedium,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        onSubmitted: (search) {
          _opacityController.forward().then((value) {
            _recipesSearchFocused = !_recipesSearchFocused;
            if (search.isEmpty &&
                ref.read(recipesViewModel.notifier).selectedIngredients.isEmpty) {
              ref.read(recipesViewModel.notifier).loadRecipeRecommendation();
            }
            _opacityController.reverse();
          });
        },
        onChanged: (text) {
          ref.read(recipesViewModel.notifier).searchRecipes(text);
        },
        onTapOutside: (ptr) {},
        controller: _recipesSearchController,
      ),
    );
  }

  Container _buildRecipesSearchSuffix() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 100,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(210),
          ),
          height: 30,
          width: 80,
          child: Text(
            'Search',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Opacity _buildRecipesSearch() {
    return Opacity(
      opacity: _opacityAnimation.value,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  ref.watch(recipesViewModel).maybeWhen(
                    recommendation: (recipes) {
                      _opacityController.forward().then((value) {
                        ref.read(recipesViewModel.notifier).searchRecipes(_recipesSearchController.text);
                        _recipesSearchFocused = !_recipesSearchFocused;
                        _opacityController.reverse();
                      });
                    },
                    searchDone: (recipes, search) {
                      _opacityController.forward().then((value) {
                        ref.read(recipesViewModel.notifier).searchRecipes(_recipesSearchController.text);
                        _recipesSearchFocused = !_recipesSearchFocused;
                        _opacityController.reverse();
                      });
                    },
                    orElse: () => {},
                  );
                },
                child: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  _appBarTitles[_currentScreen],
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _currentScreen = index;
          setState(() {});
        },
        currentIndex: _currentScreen,
        items: _bottomNavItems,
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: _buildAppBar(),
      ),
      body: _screens[_currentScreen],
    );
  }
}
