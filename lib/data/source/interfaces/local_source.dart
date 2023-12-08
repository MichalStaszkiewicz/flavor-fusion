import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

import '../../models/grocery.dart';

abstract class ILocalSource {
  void saveGrocery(Recipe recipe);
  Future<List<Recipe>> getGroceryList();
  void removeGrocery(String id);
  void saveFavoriteRecipe(Recipe recipe);
  void removeFavoriteRecipe(String recipeId);
  bool isFavorite(String id);
  Future<List<Recipe>> getFavoriteRecipes();
}
