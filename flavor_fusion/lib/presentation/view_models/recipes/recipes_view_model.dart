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

  void seachRecipes(String search) async {
    List<String> currentSuggestions = [];
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;

      if (search == '') {
        this.state = RecipesState.search([], _ingredientsCashed, '');
        return;
      }

      await locator<SourceRepository>().searchIngredients(search).then((value) {
        currentSuggestions.addAll(state.suggestions);
        for (int i = 0; i < value.length; i++) {
          if (value[i].name.toLowerCase().contains(search.toLowerCase()) &&
              !currentSuggestions.contains(value[i].name.toLowerCase()) &&
              !_ingredientsCashed.contains(value[i].name)) {
            suggestionListKey.currentState?.insertItem(
                currentSuggestions.length,
                duration: const Duration(milliseconds: 300));
            currentSuggestions.add(value[i].name.toLowerCase());
          }
        }
        for (int i = 0; i < currentSuggestions.length; i++) {
          if (!currentSuggestions[i]
              .toLowerCase()
              .contains(search.toLowerCase())) {
            String suggestion = currentSuggestions[i];
            suggestionListKey.currentState?.removeItem(
                i,
                (context, animation) => SuggestionItem(
                      suggestion: suggestion,
                      animation: animation,
                      search: search,
                    ),
                duration: const Duration(milliseconds: 300));
            currentSuggestions.removeAt(i);
            i--;
          }
        }

        this.state =
            RecipesState.search(currentSuggestions, _ingredientsCashed, search);
      });
    } else {
      state = RecipesState.search([], _ingredientsCashed, '');
    }
  }
}
