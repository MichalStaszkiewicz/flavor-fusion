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
      width: locator<Global>().deviceDimenstions.width,
      child: GestureDetector(
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
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 5),
              height: 30,
              child: Text(
                'Add To Shopping List',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
