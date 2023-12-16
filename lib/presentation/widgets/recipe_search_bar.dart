import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeSearchBar extends ConsumerStatefulWidget {
  const RecipeSearchBar({super.key});

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
               // stateKey = UniqueKey();
                ref.watch(recommendedRecipesViewModel).maybeWhen(
                      ready: (recipes, searchOpened) {
                        if (searchOpened) {
                          //    _recipesSearchFocused = !_recipesSearchFocused;
                        } else {
                          ref
                              .read(recommendedRecipesViewModel.notifier)
                              .openSearch();
                          //     _recipesSearchFocused = !_recipesSearchFocused;
                        }
                      },
                      orElse: () => {},
                    );
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
