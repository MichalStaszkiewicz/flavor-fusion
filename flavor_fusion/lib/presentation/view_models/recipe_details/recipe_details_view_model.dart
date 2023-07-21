import 'package:flavor_fusion/presentation/view_models/recipe_details/states.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var recipeDetailsViewModel =
    StateNotifierProvider<RecipeDetailsViewModel, RecipeDetailsState>(
        (ref) => RecipeDetailsViewModel(RecipeDetailsCollapsed()));

class RecipeDetailsViewModel extends StateNotifier<RecipeDetailsState> {
  RecipeDetailsViewModel(super._state);
  double descriptionHeight = 40;
  void setDescriptionExpand(String text) {
    if (state is RecipeDetailsExpanded) {
      descriptionHeight = calculateContainerHeight(text);
      state = RecipeDetailsCollapsed();
    } else {
      descriptionHeight = calculateContainerHeight(text);
      state = RecipeDetailsExpanded();
    }
  }

  double getDescriptionHeight() {
    return descriptionHeight;
  }

  double calculateContainerHeight(String text) {
    if (state is RecipeDetailsCollapsed) {
      final textPainter = TextPainter(
        text: TextSpan(text: text, style: const TextStyle(fontSize: 16)),
        maxLines: 1000,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: locator<Global>().deviceDimenstions.width - 40);

      return textPainter.size.height;
    } else {
      final textPainter = TextPainter(
        text: TextSpan(text: text, style: const TextStyle(fontSize: 16)),
        maxLines: 4,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: locator<Global>().deviceDimenstions.width - 40);

      return textPainter.size.height;
    }
  }
}
