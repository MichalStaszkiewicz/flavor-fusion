import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
abstract class RecipeFilterState with _$RecipeFilterState {
  factory RecipeFilterState.initial() = RecipeFilterInitial;
  factory RecipeFilterState.loading() = RecipeFilterLoading;
  factory RecipeFilterState.error() = RecipeFilterError;

  factory RecipeFilterState.ready() = RecipeFilterReady;
}
