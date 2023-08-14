import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/utility/notification_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';

class DishTitleAndSaveButton extends StatelessWidget {
  const DishTitleAndSaveButton({
    required this.recipe,
    required this.ref,
  });

  final Recipe recipe;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: locator<Global>().mediaQuery.size.width,
            child: Text(
              recipe.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            ref
                .read(recipeDetailsViewModel.notifier)
                .saveRecipeIngredients(recipe);
            NotificationManager.success(
              'Added ${recipe.name} ingredients to your shopping cart!',
              'New Recipe!',
              context,
            );
          },
          child: Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.shopping_cart, color: Colors.white),
                Container(
                  padding: EdgeInsets.only(top: 7),
                  height: 30,
                  child: Text(
                    'Save',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

