import 'package:flavor_fusion/utility/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
import '../../../data/models/suggestion.dart';
part 'states.freezed.dart';

@freezed
abstract class RecommendedRecipesState with _$RecommendedRecipesState {
  factory RecommendedRecipesState.initial() = RecommendedRecipesInitial;
  factory RecommendedRecipesState.loading() = RecommendedRecipesLoading;

  factory RecommendedRecipesState.error() = RecommendedRecipesError;
  factory RecommendedRecipesState.ready(Map<String, List<Recipe>> recipes) =
      RecommendedRecipesReady;
}
