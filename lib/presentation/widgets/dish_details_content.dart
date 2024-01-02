import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';

import 'package:flavor_fusion/presentation/widgets/cooking_steps_list.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_ingradients_list.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_details_button.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_header.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/dialog_manager.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/notification_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../data/models/recipe.dart';
import '../../utility/service_locator.dart';

import 'nutrion_info_table.dart';

class DishDetailsContent extends StatelessWidget {
  const DishDetailsContent({
    required this.recipe,
    required this.ref,
  });

  final Recipe recipe;
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
              width: MediaQuery.of(context).size.width,
              child: Text(
                recipe.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 20),
            DishBasicInfoRow(recipe: recipe),
            const SizedBox(height: 20),
            DishDetailsHeader(
              label: AppStrings.nutrionPerServingLabel,
            ),
            const SizedBox(height: 20),
            NutrionInfoTable(
              recipe: recipe,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: DishDetailsHeader(
                    label: AppStrings.ingredientsLabel,
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.bottomRight,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '',
                        style: Theme.of(context).textTheme.labelLarge),
                    TextSpan(
                        text: '',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ])),
                )),
              ],
            ),
            const SizedBox(height: 10),
            DishDetailsIngradientsList(
              ingredients: recipe.ingredientLines,
            ),
            RecipeDetailsButton(
              onTap: () {
                ref
                    .read(recipeDetailsViewModel.notifier)
                    .saveRecipeIngredients(recipe);
                NotificationManager.success(
                  'Added ${recipe.name} ingredients to your shopping cart!',
                  AppStrings.newRecipe,
                  context,
                );
              },
              label: AppStrings.addToShoppingListLabel,
              borderColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.white,
              textColor: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 10),
            RecipeDetailsButton(
              onTap: () {
                DialogManager.showRecipeInstructions(
                    recipe.instructions, context);
              },
              label: AppStrings.startCookingLabel,
              borderColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
