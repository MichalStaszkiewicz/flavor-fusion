import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/ingredient_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimatedWrap extends ConsumerStatefulWidget {
  AnimatedWrap({
    super.key,
  });

  @override
  AnimatedWrapState createState() => AnimatedWrapState();
}

class AnimatedWrapState extends ConsumerState<AnimatedWrap>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
   
    var ingredients = ref.watch(recipeSearchViewModel.notifier).selectedIngredients;

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: List.generate(ingredients.length, (index) {
        return IngredientChip(
          label: ingredients[index],
          onDeleted: () {
           
            ref
                .read(recipeSearchViewModel.notifier)
                .removeSelectedIngredient(ingredients[index]);
          },
          key: Key(ingredients[index]),
        );
      }),
    );
  }
}
