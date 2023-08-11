import 'package:flavor_fusion/presentation/widgets/recipe_name_row.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe_ingredient.dart';
import 'ingredient_entry.dart';
import 'ingredient_grocery_entry.dart';

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
    return Container(
      child: Column(
        children: [
          RecipeNameRow(recipeName),
          Container(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ingredients.length,
              itemBuilder: (context, index) => IngredientEntry(
                ingredient: ingredients[index],
                ingredientIndex: index,
                recipeIndex: recipeIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
