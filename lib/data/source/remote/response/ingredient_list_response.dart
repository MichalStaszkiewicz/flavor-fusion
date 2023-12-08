import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flavor_fusion/presentation/widgets/ingredient_entry.dart';

import '../../../models/ingredient.dart';
part 'ingredient_list_response.g.dart';
part 'ingredient_list_response.freezed.dart';

@freezed
class IngredientListResponse with _$IngredientListResponse {
  factory IngredientListResponse({required List<Ingredient> edges}) =
      _IngredientListResponse;
  factory IngredientListResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientListResponseFromJson(json);
}
