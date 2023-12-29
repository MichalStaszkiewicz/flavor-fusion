import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/widgets/bubble_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';

class DishCustomImage extends ConsumerStatefulWidget {
  DishCustomImage({required this.opacity, required this.recipe});
  double opacity;
  Recipe recipe;

  @override
  DishCustomImageState createState() => DishCustomImageState();
}

class DishCustomImageState extends ConsumerState<DishCustomImage> {
  @override
  Widget build(BuildContext context) {
    final dishDetailsState = ref.watch(recipeDetailsViewModel);

    return dishDetailsState.when(
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        error: () => _buildError(),
        ready: (expanded, isFavorite) => _buildReady(context, isFavorite));
  }

  Container _buildError() => Container();

  Container _buildLoading() => Container();

  Container _buildInitial() => Container();

  Opacity _buildReady(BuildContext context, bool isFavorite) {
    return Opacity(
      opacity: widget.opacity,
      child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(widget.recipe.mainImage),
          )),
          height: 340,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(favoriteViewModel.notifier).loadRecipies();
                    ref.read(searchBarModel.notifier).toggleAppBar(true, true);
                    context.router.pop();
                  },
                  child: BubbleIconButton(
                    icon: Icons.arrow_back,
                    iconColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                GestureDetector(
                  onTap: () {
                    ref
                        .read(recipeDetailsViewModel.notifier)
                        .setFavorite(widget.recipe, context);
                  },
                  child: BubbleIconButton(
                    icon: Icons.favorite,
                    iconColor: isFavorite ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
