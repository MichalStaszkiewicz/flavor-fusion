import 'package:flavor_fusion/utility/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
abstract class RecipeSortState with _$RecipeSortState {
  factory RecipeSortState.initial() = RecipeSortIniital;
  factory RecipeSortState.loading() = RecipeSortLoading;
  factory RecipeSortState.error() = RecipeSortError;
  factory RecipeSortState.ready(SortBy sortType) = RecipeSortReady;
}
