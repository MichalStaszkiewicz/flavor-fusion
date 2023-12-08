import '../../../data/models/recipe.dart';

abstract class IFavoriteRecipeService {
  Future<List<Recipe>> getFavoriteRecipes();
  bool isFavorite(String id);
  void addFavoriteRecipe(Recipe recipe);
  void removeFavoriteRecipe(String recipeId);
}
