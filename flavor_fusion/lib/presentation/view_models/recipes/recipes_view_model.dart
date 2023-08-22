import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/suggestion.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/presentation/screens/recipes_screen.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesState.initial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);

  List<String> _ingredientsCashed = [];
  List<Suggestion> _suggestionsCashed = [];
  List<String> get selectedIngredients => _ingredientsCashed;
  List<Suggestion> get suggestionsCashed => _suggestionsCashed;

  final List<String> _ingredientsList = [];
  List<Recipe> _recipes = [];
  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    _ingredientsCashed.removeWhere((element) => element == ingredient);
    this.state = RecipesState.search(
      state.suggestions,
      _ingredientsCashed,
      state.search,
    );
  }

  void addSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    if (_ingredientsCashed.contains(ingredient)) {
      this.state = RecipesState.search(
          state.suggestions, _ingredientsCashed, state.search);
    } else {
      _ingredientsCashed.add(ingredient);
      List<Suggestion> tempList = [];
      tempList.addAll(state.suggestions);
      int selectedIngredientIndex = tempList.indexWhere(
          (element) => element.name.toLowerCase() == ingredient.toLowerCase());
      Suggestion suggestion = tempList[selectedIngredientIndex];
      suggestionListKey.currentState?.removeItem(
          selectedIngredientIndex,
          (context, animation) => SuggestionItem(
              suggestion: suggestion,
              animation: animation,
              search: state.search),
          duration: const Duration(milliseconds: 300));
      tempList.removeAt(selectedIngredientIndex);

      this.state =
          RecipesState.search(tempList, _ingredientsCashed, state.search);
    }
  }

  void initRecommendedRecipes() async {
    state = RecipesState.loading();
    _recipes =
        await locator<SourceRepository>().getRecommendedRecipes().then((value) {
      state = RecipesState.recommendation(value);
      return value;
    });
  }

  void loadRecipeRecommendation() {
    state = RecipesRecommendation(_recipes);
  }

  void findRecipes() async {
    final state = this.state as RecipesSearch;
    this.state = RecipesState.searchingRecipes();
    await locator<SourceRepository>()
        .searchRecipes(state.search, state.selectedIngredients)
        .then((value) {
      this.state = RecipesState.searchDone(value);
    });
  }

  void searchRecipes(String search) async {
    if (search.isEmpty) {
      print('search is empty ' + search.length.toString());
      this.state = RecipesState.search([], _ingredientsCashed, '');
      return;
    }
    if (this.state is RecipeSearchingSuggestions) {
      return;
    }
    final state = this.state as RecipesSearch;
    state.suggestions.map((e) => e.name.toLowerCase());
    final List<Suggestion> formattedSuggestions = state.suggestions;
    final newSuggestions = <Suggestion>[];
    final List<int> animatedIndexes = [];
    for (final Suggestion suggestion in formattedSuggestions) {
      if (suggestion.name.contains(search.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        int index =
            formattedSuggestions.indexWhere((element) => element == suggestion);
        animatedIndexes.add(index);
      }
    }
    print('newSuggestions is empty ' + newSuggestions.length.toString());
    this.state = RecipesState.searchingSuggestions(
        newSuggestions, state.selectedIngredients, search);
    //  List<String> ingredients = locator<Global>().ingredientsList;
    locator<SourceRepository>()
        .searchRecipes(search, _ingredientsCashed)
        .then((recipes) {
      print("recipes: " + recipes.length.toString());
      for (final Recipe recipe in recipes) {
        for (Ingredient ingredient in recipe.ingredients) {
          final ingredientName = ingredient.name.toLowerCase();
          int suggestionExists = newSuggestions.indexWhere((element) =>
              element.name.toLowerCase() == ingredientName.toLowerCase());
          if (ingredientName.contains(search.toLowerCase()) &&
              !_ingredientsCashed.contains(ingredientName) &&
              suggestionExists == -1 &&
              ingredientName.length < 10) {
            newSuggestions.add(Suggestion(
                name: ingredientName,
                type: SuggestionType.ingredient,
                recipe: null));
          }
        }
      }
      for (Recipe recipe in recipes) {
        print(recipe.name);
        if (recipe.name.length < 20) {
          newSuggestions.add(Suggestion(
              name: recipe.name, type: SuggestionType.recipe, recipe: recipe));
        }
      }
      this.state =
          RecipesState.search(newSuggestions, _ingredientsCashed, search);
    });
    if (newSuggestions.isEmpty) {
    } else {
      for (int i = animatedIndexes.length - 1; i >= 0; i--) {
        Suggestion suggestion = formattedSuggestions[animatedIndexes[i]];

        suggestionListKey.currentState?.removeItem(
            animatedIndexes[i],
            (context, animation) => SuggestionItem(
                suggestion: suggestion,
                animation: animation,
                search: state.search),
            duration: Duration(milliseconds: 300));
      }

      this.state =
          RecipesState.search(newSuggestions, _ingredientsCashed, search);
    }
  }
}
