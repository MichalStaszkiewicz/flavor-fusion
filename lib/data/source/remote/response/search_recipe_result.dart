import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/remote/response/page_info.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_recipe_result.g.dart';
part 'search_recipe_result.freezed.dart';

@freezed
class SearchRecipeResult with _$SearchRecipeResult {
  factory SearchRecipeResult({
    required PageInfo pageInfo,
    @JsonKey(
      name: 'edges',
    )
    required List<Recipe> recipes,
  }) = _SearchRecipeResult;

  factory SearchRecipeResult.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipeResultFromJson(json);
}
