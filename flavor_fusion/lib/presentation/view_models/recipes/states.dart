import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
import '../../../data/models/suggestion.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipesState with _$RecipesState {
  factory RecipesState.initial() = RecipesInitial;
  factory RecipesState.loading() = RecipesLoading;

  factory RecipesState.error() = RecipesError;
  factory RecipesState.recommendation(List<Recipe> recipes) =
      RecipesRecommendation;
  factory RecipesState.searchingSuggestions(
      List<Suggestion> suggestions,
      List<String> selectedIngredients,
      String search) = RecipeSearchingSuggestions;
  factory RecipesState.searchingRecipes() = RecipesSearchingRecipes;
  factory RecipesState.search(List<Suggestion> suggestions,
      List<String> selectedIngredients, String search) = RecipesSearch;
  factory RecipesState.searchDone(List<Recipe> recipes) = RecipesSearchDone;
}
