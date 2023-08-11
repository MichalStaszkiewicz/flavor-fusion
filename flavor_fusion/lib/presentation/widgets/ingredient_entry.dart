import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/presentation/widgets/ingredient_grocery_entry.dart';
import 'package:flutter/material.dart';

class IngredientEntry extends StatelessWidget {
  final RecipeIngredient ingredient;
  final int ingredientIndex;
  final int recipeIndex;

  const IngredientEntry({
    required this.ingredient,
    required this.ingredientIndex,
    required this.recipeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(ingredient.name),
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
          border: Border.symmetric(vertical: BorderSide(color: Colors.black))),
      child: Center(
        child: IngredientGroceryEntry(
          ingredient: ingredient,
          ingredientIndex: ingredientIndex,
          recipeIndex: recipeIndex,
        ),
      ),
    );
  }
}
