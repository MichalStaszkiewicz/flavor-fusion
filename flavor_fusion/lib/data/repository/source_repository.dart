import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

import 'package:flavor_fusion/data/source/local/local_source.dart';
import 'package:flavor_fusion/data/source/remote/remove_source.dart';
import 'package:flavor_fusion/utility/service_locator.dart';

class SourceRepository {
  SourceRepository(this._localSource, this._remoteSource);
  final LocalSource _localSource;
  final RemoteSource _remoteSource;
  Future<List<Recipe>> getFavoriteRecipes() async {
    return await _localSource.getFavoriteRecipes();
  }

  void removeFavoriteRecipe(String recipeId) {
    _localSource.removeFavoriteRecipe(recipeId);
  }

  void saveFavoriteRecipe(Recipe recipe) {
    _localSource.saveFavoriteRecipe(recipe);
  }

  bool isFavorite(String id) {
    return _localSource.isFavorite(id);
  }

  void removeGrocery(String id) {
    return _localSource.removeGrocery(id);
  }

  void saveGrocery(Recipe grocery) {
    return _localSource.saveGrocery(grocery);
  }

  Future<List<Recipe>> getGroceryList() async {
    return await _localSource.getGroceryList();
  }

  Future<List<Recipe>> getRecommendedRecipes() async {
    Either<List<Recipe>, Exception> result =
        await _remoteSource.getRecommendedRecipes();
    return result.fold(
      (recipes) {
        return recipes;
      },
      (error) {
        print("Error occured: $error");
        return [];
      },
    );
  }
}
