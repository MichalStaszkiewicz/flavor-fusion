import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/models/suggestion.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
abstract class RecipesSearchState with _$RecipesSearchState {
  factory RecipesSearchState.initial() = RecipesSearchInitial;
  factory RecipesSearchState.loading() = RecipesSearchLoading;

  factory RecipesSearchState.error() = RecipesSearchError;
  factory RecipesSearchState.ready(
    List<Suggestion> suggestions,
    List<String> ingredients,
    MealType mealType,
    SkillLevel skillLevel,
    bool allowAnimations,
  ) = RecipesSearchReady;
  factory RecipesSearchState.done(List<Recipe> recipes, bool loadingMoreItems) =
      RecipeSearchDone;
}
