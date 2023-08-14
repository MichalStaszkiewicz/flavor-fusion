import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/interfaces/local_source.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/utility/service_locator.dart';

import '../../../utility/hive_box_keys.dart';

class LocalSource extends ILocalSource {
  @override
  void saveFavoriteRecipe(Recipe recipe) async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite_key);

    locator<HiveDataProvider<Recipe>>().put(recipe, recipe.id.toString());
  }

  @override
  void removeFavoriteRecipe(String recipeId) async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite_key);

    locator<HiveDataProvider<Recipe>>().deleteData(recipeId.toString());
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite_key);
    List<Recipe> favoriteRecipes =
        locator<HiveDataProvider<Recipe>>().getData();

    return favoriteRecipes;
  }

  @override
  bool isFavorite(String id) {
    return locator<HiveDataProvider<Recipe>>().objectExist(id);
  }

  @override
  void removeGrocery(String id) async {
    await locator<HiveDataProvider<Recipe>>().openBox(grocery_key);

    locator<HiveDataProvider<Recipe>>().deleteData(id.toString());
  }

  @override
  void saveGrocery(Recipe recipe) async {
    await locator<HiveDataProvider<Recipe>>().openBox(grocery_key);
    locator<HiveDataProvider<Recipe>>().put(recipe, recipe.id.toString());
  }

  @override
  Future<List<Recipe>> getGroceryList() async {
    await locator<HiveDataProvider<Recipe>>().openBox(grocery_key);
    List<Recipe> groceries = locator<HiveDataProvider<Recipe>>().getData();
    return groceries;
  }
}
