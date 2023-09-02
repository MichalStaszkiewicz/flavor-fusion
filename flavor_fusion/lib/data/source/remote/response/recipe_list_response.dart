import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_list_response.g.dart';
part 'recipe_list_response.freezed.dart';

@freezed
class RecipeListResponse with _$RecipeListResponse {
  factory RecipeListResponse(
      {required String? endCursor,
      required List<Recipe> edges}) = _RecipeListResponse;

  factory RecipeListResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeListResponseFromJson(json);
}
