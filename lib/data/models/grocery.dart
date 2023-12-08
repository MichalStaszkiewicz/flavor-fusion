import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'grocery.freezed.dart';

@freezed
class Grocery with _$Grocery {
  factory Grocery(
      {required Recipe recipe,
      required List<RecipeIngredient> ingredients}) = _Grocery;
}
