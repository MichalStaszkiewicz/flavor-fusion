import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flavor_fusion/domain/services/grocery.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/states.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/notification_manager.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/grocery.dart';
import '../../../domain/services/favorite_recipe.dart';

var recipeDetailsViewModel =
    StateNotifierProvider<RecipeDetailsViewModel, RecipeDetailsState>(
        (ref) => RecipeDetailsViewModel(RecipeDetailsState.initial(), ref));

class RecipeDetailsViewModel extends StateNotifier<RecipeDetailsState> {
  RecipeDetailsViewModel(super._state, this.ref);
  double descriptionHeight = 40;
  Ref ref;

  void loadDetails(Recipe recipe) {
    bool isFavorite = locator<FavoriteRecipeService>().isFavorite(recipe.id);
    state = RecipeDetailsState.ready(false, isFavorite);
  }

  void setFavorite(Recipe recipe, BuildContext context) {
    final state = this.state as RecipeDetailsReady;
    bool isFavorite = locator<FavoriteRecipeService>().isFavorite(recipe.id);
    if (isFavorite) {
      print("this recipe is favorite");
      locator<FavoriteRecipeService>().removeFavoriteRecipe(recipe.id);
      ref.read(favoriteViewModel.notifier).refreshLocalData();
      NotificationManager.success(
          'Removed ${recipe.name} from favorite list', 'Success', context);
      this.state = RecipeDetailsState.ready(state.expanded, !isFavorite);
    } else {
      print("this recipe is not favorite");
      locator<FavoriteRecipeService>().addFavoriteRecipe(recipe);
      ref.read(favoriteViewModel.notifier).refreshLocalData();
      NotificationManager.success(
          'Added ${recipe.name} to favorite list', 'Success', context);
      this.state = RecipeDetailsState.ready(state.expanded, !isFavorite);
    }
  }

  void setDescriptionExpand(String text, BuildContext context) {
    if (state is RecipeDetailsReady) {
      final state = this.state as RecipeDetailsReady;
      descriptionHeight = calculateContainerHeight(text, context);
      this.state = RecipeDetailsState.ready(!state.expanded, state.isFavorite);
    }
  }

  void saveRecipeIngredients(Recipe recipe) {
    locator<SavedGroceryService>().saveGrocery(recipe);
  }

  double calculateContainerHeight(String text, BuildContext context) {
    if (state is RecipeDetailsReady) {
      final state = this.state as RecipeDetailsReady;
      if (!state.expanded) {
        final textPainter = TextPainter(
          text: TextSpan(text: text, style: const TextStyle(fontSize: 16)),
          maxLines: 1000,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: MediaQuery.of(context).size.width - 40);

        return textPainter.size.height;
      } else {
        final textPainter = TextPainter(
          text: TextSpan(text: text, style: const TextStyle(fontSize: 16)),
          maxLines: 4,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: MediaQuery.of(context).size.width - 40);

        return textPainter.size.height;
      }
    } else {
      return 0;
    }
  }
}
