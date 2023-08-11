import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

abstract class ISavedGrocery {
  Future<List<Recipe>> getGroceryList();

  void saveGrocery(Recipe recipe);
  void removeGrocery(int id);
}
