import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var groceryViewModel =
    StateNotifierProvider<GroceriesViewModel, GroceriesState>(
        (ref) => GroceriesViewModel(GroceriesState.initial()));

class GroceriesViewModel extends StateNotifier<GroceriesState> {
  GroceriesViewModel(super.state);

  void loadGroceries() {
    state = GroceriesState.ready([
      Grocery(recipeName: 'Spaghetti', ingredients: [
        RecipeIngredient(name: 'Pasta', owned: false),
        RecipeIngredient(name: 'Sauce', owned: false)
      ])
    ]);
  }

  void updateIngredientStatus(
      int recipeIndex, int ingredientIndex, bool status) {
    if (state is GroceriesReady) {
      var groceries = (state as GroceriesReady).groceries;
      groceries[recipeIndex].ingredients[ingredientIndex].owned = status;
      state = GroceriesReady(groceries);
    }
  }
}
