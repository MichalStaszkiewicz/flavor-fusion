import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/presentation/screens/recipes_screen.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
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

  List<String> get selectedIngredients => _ingredientsCashed;

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
      List<String> tempList = [];
      tempList.addAll(state.suggestions);
      int selectedIngredientIndex = tempList.indexWhere(
          (element) => element.toLowerCase() == ingredient.toLowerCase());
      String suggestion = tempList[selectedIngredientIndex];
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
    _recipes =
        await locator<SourceRepository>().getRecommendedRecipes().then((value) {
      state = RecipesState.recipesRecommendation(value);
      return value;
    });
  }

  void loadRecipeRecommendation() {
    state = RecipesRecipesRecommendation(_recipes);
  }

  void findRecipes() {
    List<Recipe> recipes = [];

    state = RecipesState.searchDone(recipes);
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
    final List<String> formattedSuggestions =
        state.suggestions.map((e) => e.toLowerCase()).toList();
    final newSuggestions = <String>[];
    final List<int> animatedIndexes = [];
    for (final String suggestion in formattedSuggestions) {
      if (suggestion.contains(search.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        int index =
            formattedSuggestions.indexWhere((element) => element == suggestion);
        animatedIndexes.add(index);
      }
    }

    if (newSuggestions.isEmpty) {
      print('newSuggestions is empty ' + newSuggestions.length.toString());
      this.state = RecipesState.searchingSuggestions(
          newSuggestions, state.selectedIngredients, search);
      await locator<SourceRepository>().searchIngredients(search).then((value) {
        for (final ingredient in value) {
          final ingredientName = ingredient.name.toLowerCase();
          if (ingredientName.contains(search.toLowerCase()) &&
              !_ingredientsCashed.contains(ingredientName) &&
              !newSuggestions.contains(ingredientName)) {
            newSuggestions.add(ingredientName);
          }
        }

        this.state =
            RecipesState.search(newSuggestions, _ingredientsCashed, search);
      });
    } else {
      for (int i = animatedIndexes.length - 1; i >= 0; i--) {
        String name = formattedSuggestions[animatedIndexes[i]];

        suggestionListKey.currentState?.removeItem(
            animatedIndexes[i],
            (context, animation) => SuggestionItem(
                suggestion: name, animation: animation, search: state.search),
            duration: Duration(milliseconds: 300));
      }

      this.state =
          RecipesState.search(newSuggestions, _ingredientsCashed, search);
    }
  }
}
