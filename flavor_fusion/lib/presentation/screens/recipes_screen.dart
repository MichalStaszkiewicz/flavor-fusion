import 'dart:collection';

import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../widgets/ingredient_chip.dart';

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
  List<RecipeGroup> createRecipeGroups(List<Recipe> recipes) {
    List<Recipe> breakfast = [];
    List<Recipe> lunch = [];
    List<Recipe> dinner = [];
    for (Recipe recipe in recipes) {
      if (recipe.mealType.contains('breakfast')) {
        breakfast.add(recipe);
      } else if (recipe.mealType.contains('lunch')) {
        lunch.add(recipe);
      } else if (recipe.mealType.contains('dinner')) {
        dinner.add(recipe);
      }
    }
    List<RecipeGroup> recipeGroups = [];
    recipeGroups.add(RecipeGroup(recipes: breakfast, label: 'Breakfast'));
    recipeGroups.add(RecipeGroup(recipes: lunch, label: 'Lunch'));
    recipeGroups.add(RecipeGroup(recipes: dinner, label: 'Dinner'));
    return recipeGroups;
  }

  List<TextSpan> boldSuggestion(
      String suggestion, String subStr, BuildContext context) {
    int start = suggestion.toLowerCase().indexOf(subStr.toLowerCase());
    int end = start + subStr.length;

    if (start == -1) {
      return [TextSpan(text: suggestion)];
    } else {
      String beforeMatch = suggestion.substring(0, start);
      String match = suggestion.substring(start, end);
      String afterMatch = suggestion.substring(end);

      return [
        TextSpan(
            text: beforeMatch,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                letterSpacing: 0.2,
                fontSize: 20,
                color: const Color.fromRGBO(53, 57, 53, 1))),
        TextSpan(
            text: match,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                fontSize: 20,
                color: const Color.fromRGBO(53, 57, 53, 1))),
        TextSpan(
            text: afterMatch,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                letterSpacing: 0.2,
                fontSize: 20,
                color: const Color.fromRGBO(53, 57, 53, 1))),
      ];
    }
  }

  List<IngredientChip> createSelectedIngredientsList(
      List<String> selectedIngredients, WidgetRef ref) {
    List<IngredientChip> chips = [];

    for (String ingredient in selectedIngredients) {
      chips.add(IngredientChip(
          onDeleted: () {
            ref
                .read(recipesViewModel.notifier)
                .removeSelectedIngredient(ingredient);
          },
          label: ingredient));
    }
    return chips;
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
    _ingredientsAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _ingredientsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_ingredientsAnimationController)
      ..addListener(() {
        setState(() {});
      });
    _suggestionsAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _suggestionsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_suggestionsAnimationController)
      ..addListener(() {
        setState(() {});
      });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipesViewModel.notifier).loadRecommendedRecipes();
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
              ready: (List<Recipe> recipes) => _buildReady(recipes),
              orElse: () => Container(),
            ),
            duration: Duration(milliseconds: 1150),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
              search: (suggestions, selectedIngredients, search) =>
                  _buildSearch(suggestions, selectedIngredients, search),
              orElse: () => Container(),
            ),
            duration: Duration(milliseconds: 1150),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          AnimatedSwitcher(
            layoutBuilder: (_, __) => recipesState.maybeWhen(
              searching: (recipes) => _buildSearching(recipes),
              orElse: () => Container(),
            ),
            duration: Duration(milliseconds: 1150),
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

  Container _buildSearching(List<Recipe> recipes) {
    return Container(
      key: ValueKey('recipes_searching'),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 30,
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.left,
              "Found 1,254 Recipes",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ListView.builder(
              itemCount: recipes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  DishItemWidget(recipe: recipes[index]))
        ],
      ),
    );
  }

  Container _buildSearch(List<String> suggestions,
      List<String> selectedIngredients, String search) {
    print("_buildSearch extecuted");
    manageAnimations(suggestions, selectedIngredients);
    return Container(
      key: ValueKey('recipes_search'),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      selectedIngredients.isNotEmpty
                          ? _buildSelectedIngredientsList(selectedIngredients)
                          : Container(),
                      suggestions.isNotEmpty
                          ? _buildSuggestionsList(suggestions, search)
                          : Container(),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Opacity _buildSuggestionsList(List<String> suggestions, String search) {
    return Opacity(
      opacity: _suggestionsAnimation.value,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Suggestions",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: suggestions.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      ref.read(recipesViewModel.notifier).addSelectedIngredient(
                          locator<Global>().capitalize(suggestions[index]));
                    },
                    child: Container(
                      height: 50,
                      child: RichText(
                        text: TextSpan(
                            text: '',
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              ...boldSuggestion(
                                  suggestions[index], search, context)
                            ]),
                      ),
                    ),
                  ))
        ],
      ),
    );
  }

  Opacity _buildSelectedIngredientsList(List<String> selectedIngredients) {
    return Opacity(
      opacity: _ingredientsAnimation.value,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Text(
                "Ingredients",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Wrap(
                spacing: 15,
                children: [
                  ...createSelectedIngredientsList(selectedIngredients, ref),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Center _buildReady(List<Recipe> recipes) {
    return Center(
      key: ValueKey('recipes_ready'),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [...createRecipeGroups(recipes)],
          ),
        ),
      ),
    );
  }

  Container _buildLoading() => Container();

  Container _buildInitial() => Container();

  Container _buildError() => Container();
}
