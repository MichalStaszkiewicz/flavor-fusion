import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

import '../../models/grocery.dart';

abstract class ILocalSource {
  void saveGrocery(Recipe recipe);
  Future<List<Recipe>> getGroceryList();
  void removeGrocery(int id);
  void saveFavoriteRecipe(Recipe recipe);
  void removeFavoriteRecipe(int recipeId);
  bool isFavorite(int id);
  Future<List<Recipe>> getFavoriteRecipes();
}
