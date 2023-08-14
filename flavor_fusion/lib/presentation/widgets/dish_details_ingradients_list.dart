import 'package:flavor_fusion/presentation/widgets/dish_details_ingredient_chip.dart';
import 'package:flutter/material.dart';

class DishDetailsIngradientsList extends StatefulWidget {
  const DishDetailsIngradientsList({super.key});

  @override
  State<DishDetailsIngradientsList> createState() =>
      _DishDetailsIngradientsListState();
}

class _DishDetailsIngradientsListState
    extends State<DishDetailsIngradientsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
    child: Wrap(
          children: [
            DishDetailsIngredientChip(
              color: Colors.red,
              label: 'Apple',
            )
          ],
        ));
  }
}
