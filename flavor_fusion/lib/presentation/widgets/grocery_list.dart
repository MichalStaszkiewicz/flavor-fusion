import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_ingredients_list.dart';
import 'package:flutter/material.dart';

class GroceryList extends StatefulWidget {
  GroceryList({super.key, required this.groceries});

  List<Grocery> groceries;

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.groceries.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => RecipeIngredientsList(
              ingredients: widget.groceries[index].ingredients,
              recipeName: widget.groceries[index].recipe.label,
              recipeIndex: index,
            ));
  }
}
