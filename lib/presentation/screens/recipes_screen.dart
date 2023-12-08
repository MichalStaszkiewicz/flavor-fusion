import 'dart:collection';
import 'dart:ffi';

import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/animated_wrap.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flavor_fusion/presentation/widgets/recipes_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/search_done.dart';
import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
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

  @override
  void initState() {
    _ingredientsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _ingredientsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_ingredientsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    _suggestionsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _suggestionsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_suggestionsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipesViewModel.notifier).initRecommendedRecipes();
    });

    super.initState();
  }

  @override
  void dispose() {
    _ingredientsAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipesState = ref.watch(recipesViewModel);
   
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
                loading: () => _buildLoading(), orElse: () => Container()),
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
              recommendation: (Map<String, List<Recipe>> recipes) =>
                  _buildReady(recipes),
              orElse: () => Container(),
            ),
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
              search: (suggestions, selectedIngredients, search,
                  searchingInProgress, skillLevel, mealType, _) {
                manageAnimations(suggestions.map((e) => e.name).toList(),
                    selectedIngredients);
                if (searchingInProgress) {
                  return SearchingInProgress();
                } else {
                  return RecipesSearchBar(
                    ingredientsOpacity: _ingredientsAnimation.value,
                    search: search,
                    selectedIngredients: selectedIngredients,
                    suggestions: suggestions.map((e) => e.name).toList(),
                    suggestionsOpacity: _suggestionsAnimation.value,
                  );
                }
              },
              orElse: () => Container(),
            ),
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
                searchDone: (recipes, search,loadingNextPage) => SearchDone(
                      recipes: recipes,
                      search: search, loadingNextPage: loadingNextPage,
                    ),
                orElse: () => Container()),
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }

  Center _buildReady(Map<String, List<Recipe>> recipes) {
    return Center(
      key: const ValueKey('recipes_ready'),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [...createRecipeGroups(recipes)],
          ),
        ),
      ),
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
