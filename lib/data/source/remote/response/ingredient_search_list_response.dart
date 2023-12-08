import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/ingredient_search.dart';

part 'ingredient_search_list_response.g.dart';
part 'ingredient_search_list_response.freezed.dart';

@freezed
class IngredientSearchListResponse with _$IngredientSearchListResponse {
  factory IngredientSearchListResponse(
      {required List<IngredientSearch> edges}) = _IngredientSearchListResponse;

  factory IngredientSearchListResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientSearchListResponseFromJson(json);
}
