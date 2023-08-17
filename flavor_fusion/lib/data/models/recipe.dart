import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/nutriens_per_serving.dart';
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
    @HiveField(0) required String author,
    @HiveField(1) required String id,
    @HiveField(2) required List<String>? courses,
    @HiveField(3) required List<String>? cuisines,
    @HiveField(4) required String? cleanName,
    @HiveField(5) required String totalTime,
    @HiveField(6) required String name,
    @HiveField(7) required int? rating,
    @HiveField(8) required int? serving,
    @HiveField(9) required NutrientsPerServing nutrientsPerServing,
    @HiveField(10) required String recipeType,
    @HiveField(11) required List<Ingredient> ingredients,
    @HiveField(12) required List<String> ingredientLines,
    @HiveField(13) required int ingredientsCount,
    @HiveField(14) required List<String> instructions,
    @HiveField(15) required String mainImage,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) =>
      _$RecipeFromJson(json['node']);
}
