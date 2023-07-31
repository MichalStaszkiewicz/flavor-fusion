import '../../../data/models/recipe.dart';

abstract class IFavoriteRecipeService {
  Future<List<Recipe>> getFavoriteRecipes();
  bool isFavorite(int id);
  void addFavoriteRecipe(Recipe recipe);
  void removeFavoriteRecipe(int recipeId);
}
