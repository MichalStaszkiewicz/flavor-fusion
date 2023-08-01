import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/presentation/screens/favorite_screen.dart';
import 'package:flavor_fusion/presentation/screens/recipes_screen.dart';
import 'package:flavor_fusion/presentation/screens/groceries_screen.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage();

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState with TickerProviderStateMixin {
  final TextEditingController _recipesSearchController =
      TextEditingController();
  final TextEditingController _favoriteSearchController =
      TextEditingController();
  late AnimationController _opacityController;
  late Animation _opacityAnimation;
  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      label: "Recipes",
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: "Groceries",
      icon: Icon(Icons.search),
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
  final List<String> _appBarTitles = const ['Recipes', "Groceries", "Favorite"];
  bool _recipesSearchFocused = false;
  bool _favoriteSearchFocused = false;

  int _currentScreen = 0;
  bool _focused = false;
  late FocusNode _focusNode;
  void _onFocusChange() {
    //   print("_focusNode.hasFocus = " + _focusNode.hasFocus.toString());

    if (_focusNode.hasFocus == true && !_focused) {
      ref
          .read(recipesViewModel.notifier)
          .seachRecipes(_recipesSearchController.text);
      _focused = true;
    } else if (!_focusNode.hasFocus && _focused) {
      _focused = false;
    }
  }

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    Hive.registerAdapter(RecipeAdapter());
    locator<HiveDataProvider<Recipe>>().initHive();
    _opacityController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    _opacityAnimation =
        Tween<double>(begin: 1, end: 0).animate(_opacityController)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _opacityController.dispose();
    super.dispose();
  }

  Widget _buildAppBar() {
    if (_currentScreen == 0) {
      return _recipesSearchFocused == false
          ? _buildRecipesSearch()
          : _buildRecipesSearchFocused();
    }
    if (_currentScreen == 2) {
      return _favoriteSearchFocused == false
          ? _buildFavoriteSearch()
          : _buildFavoriteSearchFocused();
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
                      child: Icon(Icons.search)))),
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
          )),
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
          hintText: 'Type ingredient or recipe',
          hintStyle: Theme.of(context).textTheme.labelMedium,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
        ),
        onSubmitted: (search) {
          _opacityController.forward().then((value) {
            _recipesSearchFocused = !_recipesSearchFocused;
            ref.read(recipesViewModel.notifier).loadRecipes();
            _opacityController.reverse();
          });
        },
        onChanged: (text) {
          ref.read(recipesViewModel.notifier).seachRecipes(text);
        },
        onTapOutside: (ptr) {
          ref.read(recipesViewModel).maybeWhen(
              ready: (recipes) {
                _opacityController.forward().then((value) {
                  _recipesSearchFocused = !_recipesSearchFocused;
                  _opacityController.reverse();
                  _focusNode.nearestScope!.unfocus();
                });
              },
              orElse: () => {});
        },
        controller: _recipesSearchController,
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
                        _opacityController.forward().then((value) {
                          _recipesSearchFocused = !_recipesSearchFocused;
                          _opacityController.reverse();
                        });
                      },
                      child: Icon(Icons.search)))),
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
          items: _bottomNavItems),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: _buildAppBar()),
      body: _screens[_currentScreen],
    );
  }
}
