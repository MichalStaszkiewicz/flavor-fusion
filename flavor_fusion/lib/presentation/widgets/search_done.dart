import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flutter/material.dart';

class SearchDone extends StatelessWidget {
  SearchDone({super.key, required this.recipes});
  List<Recipe> recipes;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      key: const ValueKey('recipes_searching'),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) =>
              DishItemWidget(recipe: recipes[index])),
    );
  }
}
