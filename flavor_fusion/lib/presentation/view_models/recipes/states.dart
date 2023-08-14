import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipesState with _$RecipesState {
  factory RecipesState.initial() = RecipesInitial;
  factory RecipesState.loading() = RecipesLoading;

  factory RecipesState.error() = RecipesError;
  factory RecipesState.recipesRecommendation(List<Recipe> recipes) =
      RecipesRecipesRecommendation;
      factory RecipesState.searchingSuggestions() = Recipes
  factory RecipesState.search(List<String> suggestions,
      List<String> selectedIngredients, String search) = RecipesSearch;
  factory RecipesState.searchDone(List<Recipe> recipes) = RecipesSearchDone;
}
