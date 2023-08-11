import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_ingredients_list.dart';
import 'package:flutter/material.dart';

class GroceryList extends StatelessWidget {
  GroceryList({super.key, required this.groceries});

  List<Grocery> groceries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => RecipeIngredientsList(
              ingredients: groceries[index].ingredients,
              recipeName: groceries[index].recipeName,
              recipeIndex: index,
            ));
  }
}
