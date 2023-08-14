import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';

import 'interfaces/favorite_recipe.dart';

class FavoriteRecipeService implements IFavoriteRecipeService {
  SourceRepository _sourceRepository;

  FavoriteRecipeService(this._sourceRepository);
  @override
  void addFavoriteRecipe(Recipe recipe) {
    _sourceRepository.saveFavoriteRecipe(recipe);
  }

  @override
  void removeFavoriteRecipe(String recipeId) {
    _sourceRepository.removeFavoriteRecipe(recipeId);
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() {
    return _sourceRepository.getFavoriteRecipes();
  }

  @override
  bool isFavorite(String id) {
    return _sourceRepository.isFavorite(id);
  }
}
