import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';
part 'ingredient_search.g.dart';
part 'ingredient_search.freezed.dart';

@freezed
class IngredientSearch with _$IngredientSearch {
  factory IngredientSearch({required String label}) = _IngredientSearch;

  factory IngredientSearch.fromJson(Map<String, dynamic> json) =>
      _$IngredientSearchFromJson(json['node']);


}
