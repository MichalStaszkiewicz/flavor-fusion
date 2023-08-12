import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flutter/material.dart';

class SearchDone extends StatelessWidget {
   SearchDone({super.key, required this.recipes});
  List<Recipe> recipes;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('recipes_searching'),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 30,
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.left,
              "Found 1,254 Recipes",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ListView.builder(
              itemCount: recipes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  DishItemWidget(recipe: recipes[index]))
        ],
      ),
    );
  }
}
