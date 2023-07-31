import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'recipe.freezed.dart';
part 'recipe.g.dart';

@HiveType(
  typeId: 1,
)
@freezed
class Recipe with _$Recipe {
  factory Recipe({
    @HiveField(0) required String label,
    @HiveField(1) required String image,
    @HiveField(2) required String url,
    @HiveField(3) required List<String> dietLabels,
    @HiveField(4) required List<String> healthLabels,
    @HiveField(5) required List<String> cautions,
    @HiveField(6) required List<String> ingredientLines,
    @HiveField(7) required List<Ingredient> ingredients,
    @HiveField(8) required double calories,
    @HiveField(9) required double totalWeight,
    @HiveField(10) required int totalTime,
    @HiveField(11) required List<String> cuisineType,
    @HiveField(12) required List<String> mealType,
    @HiveField(13) required List<String> dishType,
    @HiveField(14) required int id,
    @HiveField(15) required String author,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
