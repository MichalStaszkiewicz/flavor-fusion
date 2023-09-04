import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/ingredient.dart';
import '../../../data/models/ingredient_search.dart';
import '../../../data/models/recipe.dart';
import '../../../data/models/request_status.dart';
import '../../../data/models/suggestion.dart';
import '../../../data/repository/source_repository.dart';
import '../../../presentation/screens/recipes_screen.dart';
import '../../../presentation/view_models/recipes/states.dart';
import '../../../presentation/widgets/search_done.dart';
import '../../../presentation/widgets/suggestion_item.dart';
import '../../../utility/enums.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
  (ref) {
    return RecipesViewModel(RecipesState.initial());
  },
);

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);

  final List<String> _ingredientsCached = [];
  final List<Suggestion> _suggestionsCached = [];
  final List<RequestStatus<int>> _suggestionsRequests = [];
  MealType _mealTypeCached = MealType.none;
  SkillLevel _skillLevelCached = SkillLevel.none;
  String? endCursor;
  Map<String, List<Recipe>> _recommendedRecipes = {};

  List<String> get selectedIngredients => _ingredientsCached;
  List<Suggestion> get suggestionsCached => _suggestionsCached;
  MealType get mealTypeCached => _mealTypeCached;
  SkillLevel get skillLevelCached => _skillLevelCached;

  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;

    final tempSuggestion = Suggestion(
      name: ingredient,
      type: SuggestionType.ingredient,
      recipe: null,
    );

    _suggestionsCached.add(tempSuggestion);
    final tempSuggestions = [tempSuggestion, ...state.suggestions];

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
      true,
    );
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
        true,
      );
    } else {
      _ingredientsCached.add(ingredient.toLowerCase());
      final tempList = [...state.suggestions];
      final selectedIngredientIndex = tempList.indexWhere(
        (element) => element.name.toLowerCase() == ingredient.toLowerCase(),
      );

      final suggestion = tempList[selectedIngredientIndex];
      suggestionListKey.currentState?.removeItem(
        selectedIngredientIndex,
        (context, animation) => SuggestionItem(
          suggestion: suggestion,
          animation: animation,
          search: state.search,
        ),
        duration: const Duration(milliseconds: 300),
      );
      tempList.removeAt(selectedIngredientIndex);
      _suggestionsCached.removeWhere(
        (element) => element.name.toLowerCase() == ingredient.toLowerCase(),
      );
      this.state = RecipesState.search(
        tempList,
        _ingredientsCached,
        state.search,
        state.searchingInProgress,
        _skillLevelCached,
        _mealTypeCached,
        true,
      );
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
        true,
      );
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
        true,
      );
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

  Future<void> loadNextRecipesPage() async {
    final state = this.state as RecipesSearchDone;
     this.state = RecipesState.searchDone(state.recipes,state.search,true);
    await locator<SourceRepository>()
        .searchRecipes(
      state.search,
      _ingredientsCached,
      _mealTypeCached,
      _skillLevelCached,
      endCursor,
    )
        .then((data) {
      List<Recipe> tempRecipes = state.recipes;
      tempRecipes += data['recipes'];
      this.state = RecipesState.searchDone(tempRecipes, state.search,false);
    });
  }

  void findRecipes(String search) async {
    state = RecipesState.loading();

    await locator<SourceRepository>()
        .searchRecipes(
      search,
      _ingredientsCached,
      _mealTypeCached,
      _skillLevelCached,
      endCursor,
    )
        .then((data) {
      state = RecipesState.searchDone(data['recipes'], search,false);
    });
  }

  void initSearchRecipe(String search) {
    state = RecipesState.search(
      _suggestionsCached,
      _ingredientsCached,
      search,
      false,
      _skillLevelCached,
      _mealTypeCached,
      false,
    );
  }

  void searchRecipes(String search) async {
    if (search.isEmpty) {
      _suggestionsRequests.clear();

      _suggestionsCached.clear();
      state = RecipesState.search(
        [],
        _ingredientsCached,
        '',
        false,
        _skillLevelCached,
        _mealTypeCached,
        false,
      );
      return;
    }

    final formattedSuggestions = _suggestionsCached;
    final newSuggestions = <Suggestion>[];
    final animatedIndexes = <int>[];

    for (final Suggestion suggestion in formattedSuggestions) {
      if (suggestion.name.toLowerCase().contains(search.toLowerCase()) &&
          !_ingredientsCached.contains(suggestion.name.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        final index = formattedSuggestions.indexWhere(
          (element) =>
              element.name.toLowerCase() == suggestion.name.toLowerCase(),
        );
        animatedIndexes.add(index);
      }
    }

    state = RecipesState.search(
      newSuggestions,
      _ingredientsCached,
      search,
      true,
      _skillLevelCached,
      _mealTypeCached,
      false,
    );

    final index = _suggestionsRequests.length;
    _suggestionsRequests.add(RequestStatus(completed: false, type: index));
    locator<SourceRepository>()
        .searchRecipes(
      search,
      _ingredientsCached,
      _mealTypeCached,
      _skillLevelCached,
      '',
    )
        .then((data) {
      if ((index + 1) == _suggestionsRequests.length) {
        for (final Recipe recipe in data['recipes']) {
          for (Ingredient ingredient in recipe.ingredients) {
            final ingredientName = ingredient.name.toLowerCase();
            final suggestionExists = newSuggestions.indexWhere(
              (element) =>
                  element.name.toLowerCase() == ingredientName.toLowerCase(),
            );
            if (ingredientName.contains(search.toLowerCase()) &&
                !_ingredientsCached.contains(ingredientName.toLowerCase()) &&
                suggestionExists == -1 &&
                ingredientName.length < 10) {
              newSuggestions.add(Suggestion(
                name: ingredientName,
                type: SuggestionType.ingredient,
                recipe: null,
              ));
            }
          }
        }
        for (Recipe recipe in data['recipes']) {
          if (recipe.name.length < 20) {
            newSuggestions.add(Suggestion(
              name: recipe.name,
              type: SuggestionType.recipe,
              recipe: recipe,
            ));
          }
        }

        _suggestionsCached.clear();
        _suggestionsCached.addAll(newSuggestions);
        _suggestionsRequests.elementAt(index).completed = true;

        state = RecipesState.search(
          newSuggestions,
          _ingredientsCached,
          search,
          false,
          _skillLevelCached,
          _mealTypeCached,
          false,
        );
      }
    });
    if (newSuggestions.isEmpty) {
    } else {
      for (int i = animatedIndexes.length - 1; i >= 0; i--) {
        final suggestion = formattedSuggestions[animatedIndexes[i]];

        suggestionListKey.currentState?.removeItem(
          animatedIndexes[i],
          (context, animation) => SuggestionItem(
            suggestion: suggestion,
            animation: animation,
            search: search,
          ),
          duration: const Duration(milliseconds: 300),
        );
      }

      state = RecipesState.search(
        newSuggestions,
        _ingredientsCached,
        search,
        false,
        _skillLevelCached,
        _mealTypeCached,
        false,
      );
    }
  }
}
