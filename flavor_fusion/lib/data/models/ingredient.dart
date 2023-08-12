import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@HiveType(typeId: 4)
@freezed
class Ingredient with _$Ingredient {
  factory Ingredient(
      {@HiveField(0) required String text,
      @HiveField(1) required int quantity,
      @HiveField(2) required String measure,
      @HiveField(3) required String food,
      @HiveField(4) required double weight,
      @HiveField(5) required String foodCategory,
      @HiveField(6) required String foodId,
      @HiveField(7) required String image}) = _Ingredient;
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
