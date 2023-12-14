import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';

part 'states.freezed.dart';

@freezed
abstract class FilterFavoriteState with _$SearchScreenState {
  factory FilterFavoriteState.initial() = SearchScreenInitial;
  factory FilterFavoriteState.loading() = SearchScreenLoading;
  factory FilterFavoriteState.searchingInProgress() = SearchingInProgress;
  factory FilterFavoriteState.choosingFilters() = ChoosingFilters;
  factory FilterFavoriteState.ready(List<Recipe> recipies) = SearchScreenReady;
  factory FilterFavoriteState.error() = SearchScreenError;
}
