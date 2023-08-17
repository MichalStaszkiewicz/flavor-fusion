import 'package:flavor_fusion/presentation/widgets/cooking_instruction_link.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_ingradients_list.dart';
import 'package:flavor_fusion/presentation/widgets/dish_title_and_save_button.dart';
import 'package:flavor_fusion/presentation/widgets/ingredients_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
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
            DishTitleAndSaveButton(
              recipe: recipe,
              ref: ref,
            ),
            const SizedBox(height: 10),
            DishBasicInfoRow(recipe: recipe),
            const SizedBox(height: 10),
            DescriptionWidget(
              description: description,
              expanded: expanded,
              ref: ref,
            ),
            const SizedBox(height: 20),
            IngredientsTitle(),
            const SizedBox(height: 20),
            const DishDetailsIngradientsList(),
            const SizedBox(height: 20),
            CookingInstructionTitle(),
            const SizedBox(height: 20),
            CookingInstructionLink(),
          ],
        ),
      ),
    );
  }
}