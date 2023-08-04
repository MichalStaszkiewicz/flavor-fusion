import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
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
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    var state = ref.watch(recipesViewModel);
    var ingredients = state.maybeWhen(
      search: (suggestions, ingredients, search) => ingredients,
      orElse: () => [],
    );

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: List.generate(ingredients.length, (index) {
        return IngredientChip(
          label: ingredients[index],
          onDeleted: () {
            ref
                .read(recipesViewModel.notifier)
                .removeSelectedIngredient(ingredients[index]);
          },
          key: Key(ingredients[index]),
        );
      }),
    );
  }
}
