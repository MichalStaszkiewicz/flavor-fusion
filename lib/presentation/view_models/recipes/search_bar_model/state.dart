import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';
@freezed
abstract class SearchBarModelState with _$SearchBarModelState {
  factory SearchBarModelState.initial() = SearchBarModelInitial;

  factory SearchBarModelState.ready(bool recipeSearchBarExpanded) =
      SearchBarModelReady;
}
