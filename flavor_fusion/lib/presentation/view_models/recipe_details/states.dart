import 'package:freezed_annotation/freezed_annotation.dart';
part 'states.freezed.dart';

@freezed
abstract class RecipeDetailsState with _$RecipeDetailsState {
  factory RecipeDetailsState.collapsed() = RecipeDetailsCollapsed;
  factory RecipeDetailsState.expanded() = RecipeDetailsExpanded;
}
