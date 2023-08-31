import 'package:dio/dio.dart';
import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/ingredient_search.dart';
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

  final List<String> _ingredientsCached = [];
  final List<Suggestion> _suggestionsCached = [];
  List<String> get selectedIngredients => _ingredientsCached;
  List<Suggestion> get suggestionsCached => _suggestionsCached;
  final List<RequestStatus<int>> _suggestionsRequests = [];
  MealType _mealTypeCached = MealType.none;
  MealType get mealTypeCached => _mealTypeCached;
  SkillLevel _skillLevelCached = SkillLevel.none;
  SkillLevel get skillLevelCached => _skillLevelCached;

  Map<String, List<Recipe>> _recommendedRecipes = {};
  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;

    Suggestion tempSuggestion = Suggestion(
        name: ingredient, type: SuggestionType.ingredient, recipe: null);

    _suggestionsCached.add(tempSuggestion);
    List<Suggestion> tempSuggestions = [tempSuggestion, ...state.suggestions];

    _ingredientsCached.removeWhere((element) => element == ingredient);

    suggestionListKey.currentState
        ?.insertItem(0, duration: const Duration(milliseconds: 300));

    this.state = RecipesState.search(
        tempSuggestions,
        _ingredientsCached,
        state.search,
        state.searchingInProgress,
        _skillLevelCached,
        _mealTypeCached,
        true);
  }

  void addSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    if (_ingredientsCached.contains(ingredient)) {
      this.state = RecipesState.search(
          state.suggestions,
          _ingredientsCached,
          state.search,
          state.searchingInProgress,
          _skillLevelCached,
          _mealTypeCached,
          true);
    } else {
      _ingredientsCached.add(ingredient.toLowerCase());
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
      _suggestionsCached.removeWhere(
          (element) => element.name.toLowerCase() == ingredient.toLowerCase());
      this.state = RecipesState.search(
          tempList,
          _ingredientsCached,
          state.search,
          state.searchingInProgress,
          _skillLevelCached,
          _mealTypeCached,
          true);
    }
  }

  void selectSkillLevel(SkillLevel skillLevel) {
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;

      this.state = RecipesState.search(
          state.suggestions,
          state.selectedIngredients,
          state.search,
          state.searchingInProgress,
          skillLevel,
          state.mealType,
          true);
      _skillLevelCached = skillLevel;
    }
  }

  void selectMealType(MealType mealType) {
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;
      this.state = RecipesState.search(
          state.suggestions,
          state.selectedIngredients,
          state.search,
          state.searchingInProgress,
          state.skillLevel,
          mealType,
          true);
      _mealTypeCached = mealType;
    }
  }

  void initRecommendedRecipes() async {
    state = RecipesState.loading();
    _recommendedRecipes =
        await locator<SourceRepository>().getRecommendedRecipes().then((value) {
      state = RecipesState.recommendation(value);
      return value;
    });
  }

  void loadRecipeRecommendation() {
    state = RecipesState.recommendation(_recommendedRecipes);
  }

  void findRecipes() async {
    final state = this.state as RecipesSearch;
    this.state = RecipesState.search(
        state.suggestions,
        state.selectedIngredients,
        state.search,
        true,
        _skillLevelCached,
        _mealTypeCached,
        false);
    _suggestionsCached.clear();
    _suggestionsCached.addAll(state.suggestions);
    _ingredientsCached.clear();
    _ingredientsCached
        .addAll(state.selectedIngredients.map((e) => e.toLowerCase()).toList());

    await locator<SourceRepository>()
        .searchRecipes(state.search, state.selectedIngredients, state.mealType,
            state.skillLevel)
        .then((value) {
      print("Found recipes: " + value.length.toString());
      this.state = RecipesState.searchDone(value);
    });
  }

  void searchRecipes(String search) async {
    if (search.isEmpty) {
      _suggestionsRequests.clear();

      _suggestionsCached.clear();
      state = RecipesState.search([], _ingredientsCached, '', false,
          _skillLevelCached, _mealTypeCached, false);
      return;
    }

    final List<Suggestion> formattedSuggestions = _suggestionsCached;
    final newSuggestions = <Suggestion>[];
    final List<int> animatedIndexes = [];

    for (final Suggestion suggestion in formattedSuggestions) {
      if (suggestion.name.toLowerCase().contains(search.toLowerCase()) &&
          !_ingredientsCached.contains(suggestion.name.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        int index = formattedSuggestions.indexWhere((element) =>
            element.name.toLowerCase() == suggestion.name.toLowerCase());
        animatedIndexes.add(index);
      }
    }
    state = RecipesState.search(newSuggestions, _ingredientsCached, search,
        true, _skillLevelCached, _mealTypeCached, false);

    int index = _suggestionsRequests.length;
    _suggestionsRequests.add(RequestStatus(completed: false, type: index));
    locator<SourceRepository>()
        .searchRecipes(
            search, _ingredientsCached, _mealTypeCached, _skillLevelCached)
        .then((recipes) {
      if ((index + 1) == _suggestionsRequests.length) {
        for (final Recipe recipe in recipes) {
          for (Ingredient ingredient in recipe.ingredients) {
            final ingredientName = ingredient.name.toLowerCase();
            int suggestionExists = newSuggestions.indexWhere((element) =>
                element.name.toLowerCase() == ingredientName.toLowerCase());
            if (ingredientName.contains(search.toLowerCase()) &&
                !_ingredientsCached.contains(ingredientName.toLowerCase()) &&
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
          if (recipe.name.length < 20) {
            newSuggestions.add(Suggestion(
                name: recipe.name,
                type: SuggestionType.recipe,
                recipe: recipe));
          }
        }

        _suggestionsCached.clear();
        _suggestionsCached.addAll(newSuggestions);
        _suggestionsRequests.elementAt(index).completed = true;
        state = RecipesState.search(newSuggestions, _ingredientsCached, search,
            false, _skillLevelCached, _mealTypeCached, false);
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
            duration: const Duration(milliseconds: 300));
      }

      state = RecipesState.search(newSuggestions, _ingredientsCached, search,
          false, _skillLevelCached, _mealTypeCached, false);
    }
  }
}
