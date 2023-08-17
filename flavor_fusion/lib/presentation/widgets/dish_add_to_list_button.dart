import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/utility/notification_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';

class DishAddToListButton extends ConsumerStatefulWidget {
  const DishAddToListButton({
    required this.recipe,
  });

  final Recipe recipe;

  @override
  DishTitleAndSaveButtonState createState() => DishTitleAndSaveButtonState();
}

class DishTitleAndSaveButtonState extends ConsumerState<DishAddToListButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              ref
                  .read(recipeDetailsViewModel.notifier)
                  .saveRecipeIngredients(widget.recipe);
              NotificationManager.success(
                'Added ${widget.recipe.name} ingredients to your shopping cart!',
                'New Recipe!',
                context,
              );
            },
            child: Container(
              width: 110,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                      size: 18, Icons.shopping_cart, color: Colors.white),
                  Container(
                    padding: EdgeInsets.only(top: 7),
                    height: 30,
                    child: Text(
                      'Add to list',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
