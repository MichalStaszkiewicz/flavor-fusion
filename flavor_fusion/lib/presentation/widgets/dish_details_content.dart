import 'package:flavor_fusion/presentation/widgets/cooking_instruction_link.dart';
import 'package:flavor_fusion/presentation/widgets/cooking_steps_list.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_ingradients_list.dart';
import 'package:flavor_fusion/presentation/widgets/dish_add_to_list_button.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_header.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../data/models/recipe.dart';
import '../../utility/service_locator.dart';

import 'nutrion_info_table.dart';

class DishDetailsContent extends StatelessWidget {
  const DishDetailsContent({
    required this.recipe,
    required this.description,
    required this.expanded,
    required this.ref,
  });

  final Recipe recipe;
  final String description;
  final bool expanded;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: locator<Global>().mediaQuery.size.width,
              child: Text(
                recipe.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 20),
            DishBasicInfoRow(recipe: recipe),
            const SizedBox(height: 20),
            DishDetailsHeader(
              label: 'Nutrion Per Serving',
            ),
            const SizedBox(height: 20),
            NutrionInfoTable(
              recipe: recipe,
            ),
            const SizedBox(height: 10),
            DishDetailsHeader(
              label: 'Ingrediants',
            ),
            const SizedBox(height: 10),
            DishDetailsIngradientsList(
              ingredients: recipe.ingredientLines,
            ),
            DishAddToListButton(
              recipe: recipe,
            ),
            const SizedBox(height: 10),
            DishDetailsHeader(
              label: 'Cooking Instructions',
            ),
            const SizedBox(height: 10),
            CookingStepsList(recipe: recipe)
          ],
        ),
      ),
    );
  }
}
