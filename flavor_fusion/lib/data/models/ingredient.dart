import 'package:freezed_annotation/freezed_annotation.dart';
part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
class Ingredient with _$Ingredient {
  factory Ingredient(
      {required String text,
      required int quantity,
      required String measure,
      required String food,
      required double weight,
      required String foodCategory,
      required String foodId,
      required String image}) = _Ingredient;
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
