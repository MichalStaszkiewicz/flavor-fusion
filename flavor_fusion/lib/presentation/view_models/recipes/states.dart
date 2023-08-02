import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipesState with _$RecipesState {
  factory RecipesState.initial() = RecipesInitial;
  factory RecipesState.loading() = RecipesLoading;
  factory RecipesState.error() = RecipesError;
  factory RecipesState.ready(List<Recipe> recipes) = RecipesReady;
  factory RecipesState.search(List<String> suggestions,
      List<String> selectedIngredients, String search) = RecipesSearch;
}
