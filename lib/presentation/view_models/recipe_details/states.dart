import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipeDetailsState with _$RecipeDetailsState {
  factory RecipeDetailsState.initial() = RecipeDetailsInitial;
  factory RecipeDetailsState.loading() = RecipeDetailsLoading;
  factory RecipeDetailsState.error() = RecipeDetailsError;
  factory RecipeDetailsState.ready(bool expanded, bool isFavorite) =
      RecipeDetailsReady;
}
