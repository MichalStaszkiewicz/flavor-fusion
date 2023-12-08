import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@HiveType(typeId: 4)
@freezed
class Ingredient with _$Ingredient {
  factory Ingredient({
    @HiveField(0) required String name,
  }) = _Ingredient;
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  
}
