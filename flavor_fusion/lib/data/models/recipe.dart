import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  factory Recipe({
    required String label,
    required String image,
    required String url,
    required List<String> dietLabels,
    required List<String> healthLabels,
    required List<String> cautions,
    required List<String> ingredientLines,
    required List<Ingredient> ingredients,
    required double calories,
    required double totalWeight,
    required int totalTime,
    required List<String> cuisineType,
    required List<String> mealType,
    required List<String> dishType,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
