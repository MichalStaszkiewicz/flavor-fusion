import 'package:dio/dio.dart';
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
import '../../../data/models/request_status.dart';
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
  List<RequestStatus<int>> _suggestionsRequests = [];

  final List<String> _ingredientsList = [];
  List<Recipe> _recipes = [];
  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    _ingredientsCashed.removeWhere((element) => element == ingredient);
    this.state = RecipesState.search(state.suggestions, _ingredientsCashed,
        state.search, state.searchingInProgress);
  }

  void addSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    if (_ingredientsCashed.contains(ingredient)) {
      this.state = RecipesState.search(state.suggestions, _ingredientsCashed,
          state.search, state.searchingInProgress);
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

      this.state = RecipesState.search(tempList, _ingredientsCashed,
          state.search, state.searchingInProgress);
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
    state = RecipesState.recommendation(_recipes);
  }

  void findRecipes() async {
    final state = this.state as RecipesSearch;
    this.state = RecipesState.search(
        state.suggestions, state.selectedIngredients, state.search, true);
    _suggestionsCashed.clear();
    _suggestionsCashed.addAll(state.suggestions);
    _ingredientsCashed.clear();
    _ingredientsCashed.addAll(state.selectedIngredients);

    await locator<SourceRepository>()
        .searchRecipes(state.search, state.selectedIngredients)
        .then((value) {
      this.state = RecipesState.searchDone(value);
    });
  }

  void searchRecipes(String search) async {
    if (search.isEmpty) {
      bool allCompleted = true;
      for (RequestStatus status in _suggestionsRequests) {
        if (status.completed == false) {
          allCompleted = false;
          break;
        }
      }
      if (allCompleted) {
        _suggestionsRequests.clear();
      }
      state = RecipesState.search([], _ingredientsCashed, '', false);
      return;
    }

    final List<Suggestion> formattedSuggestions = _suggestionsCashed;
    final newSuggestions = <Suggestion>[];
    final List<int> animatedIndexes = [];

    for (final Suggestion suggestion in formattedSuggestions) {
      if (suggestion.name.toLowerCase().contains(search.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        int index = formattedSuggestions.indexWhere((element) =>
            element.name.toLowerCase() == suggestion.name.toLowerCase());
        animatedIndexes.add(index);
      }
    }
    state =
        RecipesState.search(newSuggestions, _ingredientsCashed, search, true);

    int index = _suggestionsRequests.length;
    _suggestionsRequests.add(RequestStatus(completed: false, type: index));
    locator<SourceRepository>()
        .searchRecipes(search, _ingredientsCashed)
        .then((recipes) {
      if ((index + 1) == _suggestionsRequests.length) {
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
                name: recipe.name,
                type: SuggestionType.recipe,
                recipe: recipe));
          }
        }
        _suggestionsCashed.clear();
        _suggestionsCashed.addAll(newSuggestions);
        _suggestionsRequests.elementAt(index).completed = true;
        state = RecipesState.search(
            newSuggestions, _ingredientsCashed, search, false);
      } else {
        _suggestionsCashed.clear();
        _suggestionsCashed.addAll(newSuggestions);
        _suggestionsRequests.elementAt(index).completed = true;
        state = RecipesState.search(
            newSuggestions, _ingredientsCashed, search, false);
      }
    });
    if (newSuggestions.isEmpty) {
    } else {
      for (int i = animatedIndexes.length - 1; i >= 0; i--) {
        Suggestion suggestion = formattedSuggestions[animatedIndexes[i]];

        suggestionListKey.currentState?.removeItem(
            animatedIndexes[i],
            (context, animation) => SuggestionItem(
                suggestion: suggestion, animation: animation, search: search),
            duration: Duration(milliseconds: 300));
      }

      state = RecipesState.search(
          newSuggestions, _ingredientsCashed, search, false);
    }
  }
}
