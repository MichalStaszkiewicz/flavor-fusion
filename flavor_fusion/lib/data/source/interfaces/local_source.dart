import 'package:flavor_fusion/data/models/recipe.dart';

abstract class ILocalSource {
  void saveFavoriteRecipe(Recipe recipe);
  void removeFavoriteRecipe(int recipeId);
  bool isFavorite(int id);
  Future<List<Recipe>> getFavoriteRecipes();
}
