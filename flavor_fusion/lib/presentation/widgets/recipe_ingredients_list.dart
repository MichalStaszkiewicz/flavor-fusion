import 'package:flutter/material.dart';

import '../../data/models/recipe_ingredient.dart';
import 'ingredient_grocery_entry.dart';

class RecipeIngredientsList extends StatelessWidget {
  RecipeIngredientsList(
      {required this.recipeName,
      required this.ingredients,
      required this.recipeIndex});
  String recipeName;
  List<RecipeIngredient> ingredients;
  int recipeIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.left,
              recipeName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ingredients.length,
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: IngredientGroceryEntry(
                          ingredient: ingredients[index],
                          ingredientIndex: index,
                          recipeIndex: recipeIndex,
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
