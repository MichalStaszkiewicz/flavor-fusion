import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/domain/services/grocery.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/ingredient.dart';
import '../../../utility/service_locator.dart';

var groceryViewModel =
    StateNotifierProvider<GroceriesViewModel, GroceriesState>(
        (ref) => GroceriesViewModel(GroceriesState.initial()));

class GroceriesViewModel extends StateNotifier<GroceriesState> {
  GroceriesViewModel(super.state);

  void loadGroceries() async {
    state = GroceriesState.loading();
    await locator<SavedGroceryService>().getGroceryList().then((recipes) {
      List<Grocery> groceries = [];

      for (Recipe recipe in recipes) {
        List<RecipeIngredient> ingredients = [];
        for (Ingredient ingredient in recipe.ingredients) {
          ingredients
              .add(RecipeIngredient(description: ingredient, owned: false));
        }
        groceries.add(Grocery(recipe: recipe, ingredients: ingredients));
      }

      List<Map<int, AnimationController>> controllers = [];
      for (int i = 0; i < groceries.length; i++) {
        controllers.add({});
      }

      state = GroceriesState.ready(groceries, 0, controllers);
    });
  }

  void removeSelected() async {
    final state = this.state as GroceriesReady;
    List<Grocery> groceries = state.groceries;

    List<Map<int, AnimationController>> temporaryControllers =
        List.from(state.ingredinetsControllers);

    List<List<int>> indexesToRemove = [];
    for (Grocery grocery in groceries) {
      List<int> indexes = [];
      for (int i = 0; i < grocery.ingredients.length; i++) {
        if (grocery.ingredients[i].owned) {
          indexes.add(i);
        }
      }
      indexesToRemove.add(indexes);
    }

    for (int i = indexesToRemove.length - 1; i >= 0; i--) {
      for (int j = indexesToRemove[i].length - 1; j >= 0; j--) {
        int indexToRemove = indexesToRemove[i][j];
        await temporaryControllers[i][indexToRemove]!.forward();
      }
    }

    List<List<RecipeIngredient>> updatedIngredients = [];
    List<List<String>> updatedIngredientLines = [];

    for (int i = 0; i < groceries.length; i++) {
      List<RecipeIngredient> ingredients = List.from(groceries[i].ingredients);
      List<String> ingredientLines =
          List.from(groceries[i].recipe.ingredientLines);
      updatedIngredients.add(ingredients);
      updatedIngredientLines.add(ingredientLines);
    }

    for (int i = 0; i < indexesToRemove.length; i++) {
      for (int j = indexesToRemove[i].length - 1; j >= 0; j--) {
        updatedIngredients[i].removeAt(indexesToRemove[i][j]);
        updatedIngredientLines[i].removeAt(indexesToRemove[i][j]);
      }
    }

    for (int i = 0; i < groceries.length; i++) {
      temporaryControllers[i]
          .removeWhere((key, value) => indexesToRemove[i].contains(key));
    }

    List<Grocery> updatedGroceries = [];

    for (int i = 0; i < groceries.length; i++) {
      Recipe recipe = groceries[i].recipe.copyWith(
          ingredientLines: updatedIngredientLines[i],
          ingredients:
              updatedIngredients[i].map((e) => e.description).toList());
      updatedGroceries.add(groceries[i]
          .copyWith(ingredients: updatedIngredients[i], recipe: recipe));
      if (updatedIngredients[i].isEmpty) {
        locator<SavedGroceryService>().removeGrocery(recipe.id);
      } else {
        locator<SavedGroceryService>().saveGrocery(recipe);
      }
    }

    this.state = GroceriesReady(
      updatedGroceries,
      0,
      temporaryControllers,
    );
  }

  void updateIngredientStatus(int recipeIndex, int ingredientIndex, bool status,
      AnimationController controller) {
    if (state is GroceriesReady) {
      final state = this.state as GroceriesReady;
      var groceries = state.groceries;
      List<Map<int, AnimationController>> tempControllers =
          state.ingredinetsControllers;
      tempControllers[recipeIndex].addAll({ingredientIndex: controller});
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
