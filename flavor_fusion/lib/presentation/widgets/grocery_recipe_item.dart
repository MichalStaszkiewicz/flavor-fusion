import 'package:flavor_fusion/presentation/widgets/ingredient_entry.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_name_row.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe_ingredient.dart';

class GroceryRecipeItem extends StatefulWidget {
  const GroceryRecipeItem({
    super.key,
    required this.recipeName,
    required this.ingredients,
    required this.recipeIndex,
  });

  final String recipeName;
  final List<RecipeIngredient> ingredients;
  final int recipeIndex;

  @override
  State<GroceryRecipeItem> createState() => _GroceryRecipeItemState();
}

class _GroceryRecipeItemState extends State<GroceryRecipeItem>
    with TickerProviderStateMixin {
  late AnimationController _fadeAnimationController;
  late Animation<double> _animation;
  bool _visibleRecipeTitle = true;
  @override
  void initState() {
    _fadeAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation =
        Tween<double>(begin: 1, end: 0).animate(_fadeAnimationController)
          ..addListener(() async {
            setState(() {});
          });

    super.initState();
  }

  @override
  void dispose() {
    _fadeAnimationController.dispose();
    super.dispose();
  }

  void manageAnimations() async {
    print(widget.ingredients.isEmpty);
    if (widget.ingredients.isEmpty) {
      await _fadeAnimationController.forward().then((value) {
        _visibleRecipeTitle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    manageAnimations();
    return Container(
      child: Column(
        children: [
          _visibleRecipeTitle
              ? FadeTransition(
                  opacity: _animation,
                  child: SizeTransition(
                      sizeFactor: _animation,
                      child: RecipeNameRow(widget.recipeName)))
              : Container(),
          Container(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.ingredients.length,
              itemBuilder: (context, index) => IngredientEntry(
                ingredient: widget.ingredients[index],
                ingredientIndex: index,
                recipeIndex: widget.recipeIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
