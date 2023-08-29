import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/states.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_header.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_settings_chip.dart';
import 'package:flavor_fusion/presentation/widgets/search_additional_setttings.dart';
import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestions_list.dart';
import 'package:flavor_fusion/utility/enums.dart';
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
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('recipes_search'),
      color: Colors.transparent,
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
                RecipeSearchHeader(
                  label: 'Meal Type',
                ),
                const SizedBox(
                  height: 10,
                ),
                SearchAdditioalSettings(
                  choiceItems: [
                    RecipeSearchSettingsChip(
                      label: 'Breakfast',
                      settingsType: RecipeSettings.meal,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Lunch',
                      settingsType: RecipeSettings.meal,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Dinner',
                      settingsType: RecipeSettings.meal,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'TeaTime',
                      settingsType: RecipeSettings.meal,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Snack',
                      settingsType: RecipeSettings.meal,
                    ),
                  ],
                ),
                RecipeSearchHeader(
                  label: 'Cooking Skill',
                ),
                const SizedBox(
                  height: 10,
                ),
                SearchAdditioalSettings(
                  choiceItems: [
                    RecipeSearchSettingsChip(
                      label: 'Easy',
                      settingsType: RecipeSettings.skill,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Medium',
                      settingsType: RecipeSettings.skill,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Hard',
                      settingsType: RecipeSettings.skill,
                    ),
                    RecipeSearchSettingsChip(
                      label: 'Expert',
                      settingsType: RecipeSettings.skill,
                    ),
                  ],
                ),
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
