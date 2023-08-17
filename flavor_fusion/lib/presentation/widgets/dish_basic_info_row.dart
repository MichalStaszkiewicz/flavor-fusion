import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_basic_info.dart';
import 'package:flutter/material.dart';

class DishBasicInfoRow extends StatelessWidget {
  const DishBasicInfoRow({
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DishDetailsBasicInfo(
              label: recipe.totalTime.toString(), imagePath: 'stopwatch.png'),
          DishDetailsBasicInfo(
            label: '${recipe.serving} servings',
            imagePath: 'restaurant.png',
          ),
        ],
      ),
    );
  }
}
