import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/interfaces/local_source.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/utility/service_locator.dart';

import '../../../utility/hive_box_keys.dart';

class LocalSource extends ILocalSource {
  @override
  void saveFavoriteRecipe(Recipe recipe) async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite);

    locator<HiveDataProvider<Recipe>>().addData(recipe, recipe.id.toString());
  }

  @override
  void removeFavoriteRecipe(int recipeId) async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite);

    locator<HiveDataProvider<Recipe>>().deleteData(recipeId.toString());
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    await locator<HiveDataProvider<Recipe>>().openBox(favorite);
    List<Recipe> favoriteRecipes =
        locator<HiveDataProvider<Recipe>>().getData();

    return favoriteRecipes;
  }

  @override
  bool isFavorite(int id) {
    return locator<HiveDataProvider<Recipe>>().objectExist(id);
  }
}
