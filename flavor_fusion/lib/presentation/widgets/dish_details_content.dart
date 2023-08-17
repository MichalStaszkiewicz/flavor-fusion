import 'package:flavor_fusion/presentation/widgets/cooking_instruction_link.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_ingradients_list.dart';
import 'package:flavor_fusion/presentation/widgets/dish_add_to_list_button.dart';
import 'package:flavor_fusion/presentation/widgets/ingredients_title.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../data/models/recipe.dart';
import '../../utility/service_locator.dart';
import 'cooking_instruction_title.dart';
import 'description_widget.dart';

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
            Container(
              padding: EdgeInsets.only(bottom: 20, top: 20),
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            DescriptionWidget(
              description: description,
              expanded: expanded,
              ref: ref,
            ),
            const SizedBox(height: 10),
            IngredientsTitle(
              recipe: recipe,
            ),
            const SizedBox(height: 10),
            DishDetailsIngradientsList(
              ingredients: recipe.ingredientLines,
            ),
            const SizedBox(height: 10),
            CookingInstructionTitle(),
            const SizedBox(height: 10),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipe.instructions.length,
                itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Step ${index + 1}. ${recipe.instructions[index]}',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
