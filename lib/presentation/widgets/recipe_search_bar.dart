import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class RecipeSearchBar extends ConsumerStatefulWidget {
  RecipeSearchBar({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecipeSearchBarState();
}

class _RecipeSearchBarState extends ConsumerState<RecipeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      key: ValueKey('recipes_search'),
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                ref.read(searchBarModel.notifier).expandSearchBar();
                ref.read(recipeSearchViewModel.notifier).init();
                context.router.push(RecipeSearchPanelRoute());
              },
              child: const Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Center(
              child: Text(
                'Recipes',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
