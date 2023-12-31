import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

import 'package:flavor_fusion/data/source/local/local_source.dart';
import 'package:flavor_fusion/data/source/remote/remote_source.dart';
import 'package:flavor_fusion/data/source/remote/response/search_recipe_result.dart';
import 'package:flavor_fusion/utility/enums.dart';
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

  Future<Map<String, List<Recipe>>> getRecommendedRecipes() async {
    Either<Map<String, List<Recipe>>, Exception> result =
        await _remoteSource.getRecommendedRecipes();
    return result.fold(
      (recipes) {
      
        return recipes;
      },
      (error) {
        print("Error occured: $error");
        return {};
      },
    );
  }

  Future<List<Ingredient>> searchIngredients(String search) async {
    Either<List<Ingredient>, Exception> result =
        await _remoteSource.searchIngredients(search);
    return result.fold(
      (ingredients) {
        return ingredients;
      },
      (error) {
        print("Error occured: $error");
        return [];
      },
    );
  }

  Future<SearchRecipeResult> searchRecipes(
      String search,
      List<String> ingredients,
      MealType mealType,
      SkillLevel skillLevel,
      String? endCursor) async {
    Either<SearchRecipeResult, Exception> result = await _remoteSource
        .searchRecipes(search, ingredients, mealType, skillLevel, endCursor);
    return result.fold(
      (result) {
        return result;
      },
      (error) {
        print("Error occured: $error");
        throw error;
      },
    );
  }
}
