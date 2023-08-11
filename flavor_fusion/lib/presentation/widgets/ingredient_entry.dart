import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/presentation/widgets/ingredient_grocery_entry.dart';
import 'package:flutter/material.dart';

class IngredientEntry extends StatefulWidget {
  final RecipeIngredient ingredient;
  final int ingredientIndex;
  final int recipeIndex;

  const IngredientEntry(
      {required this.ingredient,
      required this.ingredientIndex,
      required this.recipeIndex,
      super.key});

  @override
  State<IngredientEntry> createState() => _IngredientEntryState();
}

class _IngredientEntryState extends State<IngredientEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
      child: Center(
        child: IngredientGroceryEntry(
          key: ValueKey(widget.ingredient.name),
          ingredient: widget.ingredient,
          ingredientIndex: widget.ingredientIndex,
          recipeIndex: widget.recipeIndex,
        ),
      ),
    );
  }
}
