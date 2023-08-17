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
            nutrionName: 'calories',
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.fat.toStringAsPrecision(1).toString()} g',
            nutrionName: 'fat',
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.protein.toStringAsPrecision(1).toString()} g',
            nutrionName: 'protein',
          ),
          _buildDivider(),
          NutrionInfoEntry(
            nutrionCount:
                '${recipe.nutritionalInfo.carbs.toStringAsPrecision(1).toString()} g',
            nutrionName: 'carbs',
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

class NutrionInfoEntry extends StatelessWidget {
  NutrionInfoEntry(
      {super.key, required this.nutrionCount, required this.nutrionName});
  String nutrionName;
  String nutrionCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            nutrionName.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 11, color: Colors.black.withOpacity(0.6)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            nutrionCount,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
