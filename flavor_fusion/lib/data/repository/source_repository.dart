import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/interfaces/source_repository.dart';
import 'package:flavor_fusion/data/source/local/local_source.dart';
import 'package:flavor_fusion/utility/service_locator.dart';

class SourceRepository implements ISourceRepository {
  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    return await locator<LocalSource>().getFavoriteRecipes();
  }

  @override
  void removeFavoriteRecipe(int recipeId) {
    locator<LocalSource>().removeFavoriteRecipe(recipeId);
  }

  @override
  void saveFavoriteRecipe(Recipe recipe) {
    locator<LocalSource>().saveFavoriteRecipe(recipe);
  }

  @override
  bool isFavorite(int id) {
    return locator<LocalSource>().isFavorite(id);
  }
}
