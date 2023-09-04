import 'package:flavor_fusion/presentation/widgets/nutrion_info_entry.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../view_models/recipe_details/recipe_details_view_model.dart';


class NutrionInfoTable extends StatelessWidget {
  const NutrionInfoTable({required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NutrionInfoEntry(
            nutrionCount: recipe.nutrientsPerServing.calories
                .toDouble()
                .round()
                .toString(),
            nutrionName: caloriesNutritionName,
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.fat.toStringAsPrecision(1).toString()} g',
            nutrionName: fatNutritionName,
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.protein.toStringAsPrecision(1).toString()} g',
            nutrionName: proteinNutritionName,
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.carbs.toStringAsPrecision(1).toString()} g',
            nutrionName: carbsNutritionName,
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      height: 45,
      width: 1,
      color: Colors.black.withOpacity(0.3),
    );
  }
}
