import 'package:flavor_fusion/data/models/recipe_ingredient.dart';

class Grocery {
  Grocery({required this.recipeName, required this.ingredients});

  String recipeName;
  List<RecipeIngredient> ingredients;
}
