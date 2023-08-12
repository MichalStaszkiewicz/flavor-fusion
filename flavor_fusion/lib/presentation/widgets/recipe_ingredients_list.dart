import 'package:flavor_fusion/presentation/widgets/recipe_name_row.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe_ingredient.dart';
import 'grocery_recipe_item.dart';
import 'ingredient_entry.dart';
import 'ingredient_entry.dart';

class RecipeIngredientsList extends StatelessWidget {
  RecipeIngredientsList(
      {required this.recipeName,
      required this.ingredients,
      required this.recipeIndex});

  final String recipeName;
  final List<RecipeIngredient> ingredients;
  final int recipeIndex;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GroceryRecipeItem(
          key: ValueKey(recipeName),
          recipeName: recipeName,
          ingredients: ingredients,
          recipeIndex: recipeIndex),
    ]);
  }
}
