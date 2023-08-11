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
        RecipeIngredient(name: 'Sugar', owned: false),
        RecipeIngredient(name: 'Sauce', owned: false)
      ])
    ], 0);
  }

  void removeSelected() {
    final state = this.state as GroceriesReady;
    List<Grocery> groceries = state.groceries;
    for (Grocery grocery in groceries) {
      grocery.ingredients.removeWhere((element) => element.owned == true);
    }

    this.state = GroceriesReady(groceries, 0);
  }

  void updateIngredientStatus(
      int recipeIndex, int ingredientIndex, bool status) {
    if (state is GroceriesReady) {
      final state = this.state as GroceriesReady;
      var groceries = state.groceries;
      groceries[recipeIndex].ingredients[ingredientIndex].owned = status;

      int selected = 0;
      for (Grocery grocery in groceries) {
        selected += grocery.ingredients
            .where((element) => element.owned == true)
            .toList()
            .length;
      }
      this.state = GroceriesReady(groceries, selected);
    }
  }
}
