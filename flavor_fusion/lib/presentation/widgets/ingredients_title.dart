import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';
import 'dish_add_to_list_button.dart';

class IngredientsTitle extends StatefulWidget {
  IngredientsTitle({required this.recipe});
  Recipe recipe;
  @override
  State<IngredientsTitle> createState() => _IngredientsTitleState();
}

class _IngredientsTitleState extends State<IngredientsTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ingrediants',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          DishAddToListButton(
            recipe: widget.recipe,
          ),
        ],
      ),
    );
  }
}
