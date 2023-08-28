import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
import '../../../data/models/suggestion.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipesState with _$RecipesState {
  factory RecipesState.initial() = RecipesInitial;
  factory RecipesState.loading() = RecipesLoading;

  factory RecipesState.error() = RecipesError;
  factory RecipesState.recommendation(Map<String, List<Recipe>> recipes) =
      RecipesRecommendation;

  factory RecipesState.search(
    List<Suggestion> suggestions,
    List<String> selectedIngredients,
    String search,
    bool searchingInProgress,
  ) = RecipesSearch;
  factory RecipesState.searchDone(List<Recipe> recipes) = RecipesSearchDone;
}
