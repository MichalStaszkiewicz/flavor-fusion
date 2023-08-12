import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class RecipeIngredient {
  RecipeIngredient(
      {@HiveField(0) required this.description,
      @HiveField(1) required this.owned});
  Ingredient description;
  bool owned;
}
