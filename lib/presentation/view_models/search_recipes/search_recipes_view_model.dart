import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/models/request_status.dart';
import 'package:flavor_fusion/data/models/suggestion.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/presentation/screens/recipes_page.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/states.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/presentation/widgets/suggestions_list.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var recipeSearchViewModel =
    StateNotifierProvider<RecipesSearchViewModel, RecipesSearchState>(
  (ref) {
    return RecipesSearchViewModel(RecipesSearchState.initial());
  },
);

class RecipesSearchViewModel extends StateNotifier<RecipesSearchState> {
  final List<String> _ingredientsCached = [];
  final List<Suggestion> _suggestionsCached = [];
  final List<RequestStatus<int>> _suggestionsRequests = [];
  MealType _mealTypeCached = MealType.none;
  SkillLevel _skillLevelCached = SkillLevel.none;
  String search = '';
  String? endCursor;

  List<String> get selectedIngredients => _ingredientsCached;
  List<Suggestion> get suggestionsCached => _suggestionsCached;
  MealType get mealTypeCached => _mealTypeCached;
  SkillLevel get skillLevelCached => _skillLevelCached;
  List<Recipe> searchedRecipes = [];

  RecipesSearchViewModel(super._state);
  void init() {
    state = RecipesSearchState.ready(_suggestionsCached, _ingredientsCached,
        _mealTypeCached, _skillLevelCached, false);
  }

  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearchReady;

    final tempSuggestion = Suggestion(
      name: ingredient,
      type: SuggestionType.ingredient,
      recipe: null,
    );

    _suggestionsCached.add(tempSuggestion);

    _ingredientsCached.removeWhere(
        (element) => element.toLowerCase() == ingredient.toLowerCase());
    final tempSuggestions = [tempSuggestion, ...state.suggestions];

    suggestionListKey.currentState
        ?.insertItem(0, duration: const Duration(milliseconds: 100));
    _suggestionsCached.clear();
    _suggestionsCached.addAll(tempSuggestions);
    this.state = RecipesSearchState.ready(tempSuggestions, _ingredientsCached,
        state.mealType, state.skillLevel, true);
  }

  void addSelectedIngredient(
    String ingredient,
  ) {
    final state = this.state as RecipesSearchReady;
    if (_ingredientsCached.contains(ingredient)) {
      this.state = RecipesSearchState.ready(state.suggestions,
          _ingredientsCached, _mealTypeCached, _skillLevelCached, true);
    } else {
      _ingredientsCached.add(ingredient.toLowerCase());
      final tempList = [..._suggestionsCached];
      final selectedIngredientIndex = tempList.indexWhere(
        (element) => element.name.toLowerCase() == ingredient.toLowerCase(),
      );

      final suggestion = tempList[selectedIngredientIndex];
      suggestionListKey.currentState?.removeItem(
        selectedIngredientIndex,
        (context, animation) => SuggestionItem(
          suggestion: suggestion,
          animation: animation,
          search: search,
        ),
        duration: const Duration(milliseconds: 100),
      );
      tempList.removeAt(selectedIngredientIndex);
      _suggestionsCached.removeWhere(
        (element) => element.name.toLowerCase() == ingredient.toLowerCase(),
      );

      this.state = RecipesSearchState.ready(
          tempList, _ingredientsCached, state.mealType, state.skillLevel, true);
    }
  }

  void selectSkillLevel(SkillLevel skillLevel) {
    if (state is RecipesSearchReady) {
      final state = this.state as RecipesSearchReady;

      _skillLevelCached = skillLevel;
      this.state = RecipesSearchState.ready(state.suggestions,
          state.ingredients, state.mealType, skillLevel, true);
    }
  }

  void selectMealType(MealType mealType) {
    if (state is RecipesSearchReady) {
      final state = this.state as RecipesSearchReady;
      _mealTypeCached = mealType;
      this.state = RecipesSearchState.ready(state.suggestions,
          state.ingredients, mealType, state.skillLevel, true);
    }
  }

  Future<void> loadNextRecipesPage() async {
    if (state is RecipeSearchDone) {
      final state = this.state as RecipeSearchDone;
      this.state = RecipesSearchState.done(state.recipes, true);
      await locator<SourceRepository>()
          .searchRecipes(
        search,
        _ingredientsCached,
        _mealTypeCached,
        _skillLevelCached,
        endCursor,
      )
          .then((data) {
        this.state = RecipesSearchState.done(
            List.from(state.recipes)..addAll(data.recipes), false);
      });
    }
  }

  void findRecipes() async {
    state = RecipesSearchState.loading();

    await locator<SourceRepository>()
        .searchRecipes(
      search,
      _ingredientsCached,
      _mealTypeCached,
      _skillLevelCached,
      endCursor,
    )
        .then((data) {
      state = RecipesSearchState.done(data.recipes, false);
    });
  }

  void searchRecipes(String search) async {
    if (search.isEmpty) {
      _suggestionsRequests.clear();

      _suggestionsCached.clear();
      state = RecipesSearchState.ready(_suggestionsCached, _ingredientsCached,
          _mealTypeCached, _skillLevelCached, false);

      return;
    }
    state = RecipesSearchState.loading();

    final newSuggestions = <Suggestion>[];
    final animatedIndexes = <int>[];

    for (final Suggestion suggestion in _suggestionsCached) {
      if (suggestion.name.toLowerCase().contains(search.toLowerCase()) &&
          !_ingredientsCached.contains(suggestion.name.toLowerCase())) {
        newSuggestions.add(suggestion);
      } else {
        final index = _suggestionsCached.indexWhere(
          (element) =>
              element.name.toLowerCase() == suggestion.name.toLowerCase(),
        );
        animatedIndexes.add(index);
      }
    }

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
        for (final Recipe recipe in data.recipes) {
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
        for (Recipe recipe in data.recipes) {
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

        state = RecipesSearchState.ready(_suggestionsCached, _ingredientsCached,
            _mealTypeCached, _skillLevelCached, false);
      }
    });
    if (newSuggestions.isEmpty) {
    } else {
      for (int i = animatedIndexes.length - 1; i >= 0; i--) {
        final suggestion = _suggestionsCached[animatedIndexes[i]];

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

      state = RecipesSearchState.ready(_suggestionsCached, _ingredientsCached,
          _mealTypeCached, _skillLevelCached, false);
    }
  }
}
