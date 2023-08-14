import 'package:flavor_fusion/presentation/widgets/recipe_item.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';

class RecipeGroup extends StatelessWidget {
  RecipeGroup({super.key, required this.recipes, required this.label});
  String label;
  List<Recipe> recipes;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
                textAlign: TextAlign.left,
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 280,
            width: double.infinity,
            child: ListView.builder(
              itemCount: recipes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => RecipeItem(
                recipe: recipes[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
