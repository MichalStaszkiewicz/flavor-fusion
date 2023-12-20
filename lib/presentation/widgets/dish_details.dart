import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/states.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_basic_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../view_models/recipe_details/state_widget/dish_details_ready.dart';
import 'dish_details_ingradients_list.dart';

class DishDetails extends ConsumerWidget {
  DishDetails({
    required this.recipe,
  });
  Recipe recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipeDetailsState = ref.watch(recipeDetailsViewModel);
    return recipeDetailsState.when(
        error: () => _buildError(),
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        ready: (bool expanded, bool isFavorite) =>
            DishDetailsReadyWidget(recipe: recipe));
  }

  Container _buildInitial() => Container();

  Container _buildLoading() => Container();

  Container _buildError() => Container();
}
