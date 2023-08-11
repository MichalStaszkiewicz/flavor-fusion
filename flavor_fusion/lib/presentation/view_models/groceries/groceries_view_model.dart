import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var groceryViewModel =
    StateNotifierProvider<GroceriesViewModel, GroceriesState>(
        (ref) => GroceriesViewModel(GroceriesState.initial()));

class GroceriesViewModel extends StateNotifier<GroceriesState> {
  GroceriesViewModel(super.state);

  void loadGroceries() {
    state = GroceriesState.ready(
        [
          Grocery(recipeName: 'Spaghetti', ingredients: [
            RecipeIngredient(name: 'Pasta', owned: false),
            RecipeIngredient(name: 'Sugar', owned: false),
            RecipeIngredient(name: 'Sauce', owned: false),
            RecipeIngredient(name: 'Coca Cola', owned: false),
            RecipeIngredient(name: 'Pepsi', owned: false)
          ])
        ],
        0,
        [{}]);
  }

  void addIngredientController(int index, AnimationController controller) {
    final state = this.state as GroceriesReady;
    List<Map<int, AnimationController>> tempControllers =
        state.ingredinetsControllers;
    tempControllers[0].addAll({index: controller});
    this.state =
        GroceriesReady(state.groceries, state.selected, tempControllers);
  }

  void removeSelected() async {
    final state = this.state as GroceriesReady;
    List<Grocery> groceries = state.groceries;
    List<Map<int, AnimationController>> temporaryControllers =
        state.ingredinetsControllers;

    List<int> indexesToRemove = [];

    for (int i = 0; i < groceries[0].ingredients.length; i++) {
      if (groceries[0].ingredients[i].owned) {
        indexesToRemove.add(i);
      }
    }

    for (int i = indexesToRemove.length - 1; i >= 0; i--) {
      int indexToRemove = indexesToRemove[i];
      await temporaryControllers[0][indexToRemove]!.forward();
      groceries[0].ingredients.removeAt(indexToRemove);
      temporaryControllers[0].remove(indexToRemove);
    }
    print(temporaryControllers[0]);
    this.state = GroceriesReady(groceries, 0, temporaryControllers);
  }

  void updateIngredientStatus(int recipeIndex, int ingredientIndex, bool status,
      AnimationController controller) {
    if (state is GroceriesReady) {
      final state = this.state as GroceriesReady;
      var groceries = state.groceries;
      List<Map<int, AnimationController>> tempControllers =
          state.ingredinetsControllers;
      tempControllers[0].addAll({ingredientIndex: controller});
      groceries[recipeIndex].ingredients[ingredientIndex].owned = status;

      int selected = 0;
      for (Grocery grocery in groceries) {
        selected += grocery.ingredients
            .where((element) => element.owned == true)
            .toList()
            .length;
      }
      this.state =
          GroceriesReady(groceries, selected, state.ingredinetsControllers);
    }
  }
}
