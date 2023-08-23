import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/states.dart';
import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestions_list.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/service_locator.dart';

class RecipesSearchBar extends ConsumerStatefulWidget {
  RecipesSearchBar(
      {super.key,
      required this.suggestions,
      required this.selectedIngredients,
      required this.ingredientsOpacity,
      required this.suggestionsOpacity,
      required this.search});
  List<String> suggestions;

  List<String> selectedIngredients;

  double ingredientsOpacity;

  double suggestionsOpacity;
  String search;

  @override
  RecipesSearchBarState createState() => RecipesSearchBarState();
}

class RecipesSearchBarState extends ConsumerState<RecipesSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('recipes_search'),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                ref.watch(recipesViewModel).maybeWhen(
                      search: (suggestions, selectedIngredients, search,
                          searchingInProgress) {
                    
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              selectedIngredients.isNotEmpty
                                  ? SelectedIngredientsList(
                                      opacity: widget.ingredientsOpacity,
                                    )
                                  : Container(),
                              suggestions.isNotEmpty
                                  ? SuggestionsList(
                                      search: search,
                                      suggestions: suggestions,
                                      opacity: widget.suggestionsOpacity)
                                  : Container()
                            ],
                          ),
                        );
                      },
                      orElse: () => Container(),
                    ),
              ]),
        ),
      ),
    );
  }
}
