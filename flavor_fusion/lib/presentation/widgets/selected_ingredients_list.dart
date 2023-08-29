import 'package:flavor_fusion/presentation/widgets/animated_wrap.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_header.dart';
import 'package:flutter/material.dart';

class SelectedIngredientsList extends StatefulWidget {
  const SelectedIngredientsList({
    super.key,
    required this.opacity,
  });

  final double opacity;

  @override
  State<SelectedIngredientsList> createState() =>
      _SelectedIngredientsListState();
}

class _SelectedIngredientsListState extends State<SelectedIngredientsList> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.opacity,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RecipeSearchHeader(
              label: "Ingrsedients",
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: AnimatedWrap(),
            )
          ],
        ),
      ),
    );
  }
}
