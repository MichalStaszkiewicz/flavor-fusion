import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/bubble_icon_button.dart';
import 'package:flavor_fusion/presentation/widgets/custom_button.dart';
import 'package:flavor_fusion/presentation/widgets/dish_custom_image.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';

import '../view_models/recipe_details/state_widget/dish_details_screen_ready.dart';

@RoutePage()
class DishDetailsScreen extends ConsumerStatefulWidget {
  DishDetailsScreen({required this.name, required this.recipe});
  String name;
  Recipe recipe;
  @override
  DishDetailsScreenState createState() => DishDetailsScreenState();
}

class DishDetailsScreenState extends ConsumerState<DishDetailsScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipeDetailsViewModel.notifier).loadDetails(widget.recipe);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipeDetailsState = ref.watch(recipeDetailsViewModel);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: recipeDetailsState.when(
            error: () => Container(),
            initial: () => Container(),
            loading: () => Container(),
            ready: (bool expanded, bool isFavorite) => DishDetailsScreenReady(
                  recipe: widget.recipe,
                )));
  }
}
