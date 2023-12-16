import 'dart:collection';
import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/suggestion.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/animated_wrap.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_bar_opened.dart';
import 'package:flavor_fusion/presentation/widgets/search_done.dart';
import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../widgets/ingredient_chip.dart';
import '../widgets/searching_in_progress.dart';
import '../widgets/suggestions_list.dart';

final GlobalKey<AnimatedListState> suggestionListKey =
    GlobalKey<AnimatedListState>();

class RecipesScreen extends ConsumerStatefulWidget {
  const RecipesScreen({
    super.key,
  });
  @override
  RecipesScreenState createState() => RecipesScreenState();
}

class RecipesScreenState extends ConsumerState<RecipesScreen>
    with TickerProviderStateMixin {
  late AnimationController _ingredientsAnimationController;
  late Animation _ingredientsAnimation;
  late AnimationController _suggestionsAnimationController;
  late Animation _suggestionsAnimation;

  List<RecipeGroup> createRecipeGroups(Map<String, List<Recipe>> recipes) {
    List<Recipe> breakfast = recipes['breakfast']!;
    List<Recipe> lunch = recipes['lunch']!;
    List<Recipe> dinner = recipes['dinner']!;

    List<RecipeGroup> recipeGroups = [];
    recipeGroups.add(RecipeGroup(recipes: breakfast, label: 'Breakfast'));
    recipeGroups.add(RecipeGroup(recipes: lunch, label: 'Lunch'));
    recipeGroups.add(RecipeGroup(recipes: dinner, label: 'Dinner'));
    return recipeGroups;
  }

  void manageAnimations(List<String> suggestions, List<String> ingredients) {
    if (ingredients.isNotEmpty &&
        _ingredientsAnimationController.status != AnimationStatus.completed) {
      _ingredientsAnimationController.forward();
    }
    if (ingredients.isEmpty &&
        _ingredientsAnimationController.status == AnimationStatus.completed) {
      _ingredientsAnimationController.reverse();
    }
    if (suggestions.isNotEmpty &&
        _suggestionsAnimationController.status != AnimationStatus.completed) {
      _suggestionsAnimationController.forward();
    }
    if (suggestions.isEmpty &&
        _suggestionsAnimationController.status == AnimationStatus.completed) {
      _suggestionsAnimationController.reverse();
    }
  }

  final TextEditingController _recipesSearchController =
      TextEditingController();

  bool _recipesSearchFocused = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    _ingredientsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _ingredientsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_ingredientsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    _suggestionsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _suggestionsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_suggestionsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recommendedRecipesViewModel.notifier).initRecommendedRecipes();
    });

    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _ingredientsAnimationController.dispose();
    super.dispose();
  }

  UniqueKey stateKey = UniqueKey();
  @override
  Widget build(BuildContext context) {
    final recipesState = ref.watch(recommendedRecipesViewModel);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: recipesState.maybeWhen(
        orElse: () => Container(),
        ready: ((recipes, searchOpened) {
          if (searchOpened) {
            return _buildRecipesSearchFocused();
          } else {
            return RecipeSearchBar();
          }
        }),
      )),
      body: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: Container(
                  key: stateKey,
                  child: recipesState.maybeWhen(
                      loading: () => _buildLoading(),
                      orElse: () => Container(),
                      ready: (Map<String, List<Recipe>> recipes,
                          bool searchOpened) {
                        if (searchOpened) {
                          manageAnimations(
                              List.from(ref
                                  .read(recipeSearchViewModel.notifier)
                                  .suggestionsCached
                                  .map((e) => e.name)
                                  .toList()),
                              ref
                                  .read(recipeSearchViewModel.notifier)
                                  .selectedIngredients);
                          return RecipeSearchBarOpened(
                            ingredientsOpacity: _ingredientsAnimation.value,
                            suggestionsOpacity: _suggestionsAnimation.value,
                          );
                        }
                        return _buildReady(recipes);
                      }),
                )),
          ],
        ),
      ),
    );
  }

  Center _buildReady(Map<String, List<Recipe>> recipes) {
    return Center(
      key: ValueKey(2),
      child: SingleChildScrollView(
        child: Column(
          children: [...createRecipeGroups(recipes)],
        ),
      ),
    );
  }

  Container _buildRecipesSearchSuffix() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
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

  TextField _buildRecipesSearchFocused() {
    return TextField(
      focusNode: _focusNode,
      autofocus: true,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        prefixIcon: Container(
          alignment: Alignment.centerLeft,
          width: 20,
          child: GestureDetector(
            onTap: () {
              stateKey = UniqueKey();
              _focusNode.nearestScope!.unfocus();
              _recipesSearchFocused = !_recipesSearchFocused;
              ref
                  .read(recommendedRecipesViewModel.notifier)
                  .loadRecipeRecommendation();
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            ref.read(recipeSearchViewModel).maybeWhen(
                  orElse: () => {},
                  ready: ((suggestions, ingredients, mealType, skillLevel) {
                    _recipesSearchFocused = !_recipesSearchFocused;

                    _focusNode.nearestScope!.unfocus();

                    context.router.push(SearchDoneRoute());
                  }),
                );
          },
          child: _buildRecipesSearchSuffix(),
        ),
        hintText: searchHint,
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
        _recipesSearchFocused = !_recipesSearchFocused;
        if (search.isEmpty &&
            ref
                .read(recipeSearchViewModel.notifier)
                .selectedIngredients
                .isEmpty) {
          ref
              .read(recommendedRecipesViewModel.notifier)
              .loadRecipeRecommendation();
        } else {
          ref.read(recipeSearchViewModel.notifier).findRecipes();
        }
      },
      onChanged: (text) {
        ref.read(recipeSearchViewModel.notifier).search = text;
        ref.read(recipeSearchViewModel.notifier).searchRecipes(text);
      },
      onTapOutside: (ptr) {},
      controller: _recipesSearchController,
    );
  }



  Container _buildLoading() => Container(
        key: const ValueKey('recipes_loading'),
        child: Center(
          child: Lottie.asset(height: 250, 'assets/loading.json'),
        ),
      );

  Container _buildInitial() => Container();

  Container _buildError() => Container();
}

