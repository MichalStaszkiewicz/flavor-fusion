import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/recipe.dart';

part 'states.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  factory FavoriteState.initial() = FavoriteInitial;
  factory FavoriteState.loading() = FavoriteLoading;
  factory FavoriteState.error() = FavoriteError;
  factory FavoriteState.ready(List<Recipe> recipies) = FavoriteReady;
}
