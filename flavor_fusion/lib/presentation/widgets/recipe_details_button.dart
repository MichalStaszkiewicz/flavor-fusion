import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/utility/notification_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';

class RecipeDetailsButton extends ConsumerStatefulWidget {
  RecipeDetailsButton(
      {required this.label,
      required this.onTap,
      required this.borderColor,
      required this.backgroundColor});

  final String label;
  VoidCallback onTap;
  Color borderColor;
  Color backgroundColor;
  @override
  RecipeDetailsButtonState createState() => RecipeDetailsButtonState();
}

class RecipeDetailsButtonState extends ConsumerState<RecipeDetailsButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: locator<Global>().deviceDimenstions.width,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              border: Border.all(color: widget.borderColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 5),
              height: 30,
              child: Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: widget.borderColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
