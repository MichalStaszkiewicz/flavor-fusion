import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_basic_info.dart';
import 'package:flavor_fusion/utility/asset_path.dart';
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
              label: recipe.totalTime!, imagePath: AssetPath.stopwatch),
          DishDetailsBasicInfo(
            label: '${recipe.serving} servings',
            imagePath: AssetPath.restaurant,
          ),
        ],
      ),
    );
  }
}
