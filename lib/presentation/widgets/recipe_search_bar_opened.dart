import 'package:flavor_fusion/presentation/view_models/filter_favorite_recipes/states.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';

import 'package:flavor_fusion/presentation/widgets/recipe_search_header.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_settings_chip.dart';
import 'package:flavor_fusion/presentation/widgets/search_additional_setttings.dart';
import 'package:flavor_fusion/presentation/widgets/searching_in_progress.dart';
import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestions_list.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/service_locator.dart';

class RecipeSearchBarOpened extends ConsumerStatefulWidget {
  RecipeSearchBarOpened({
    super.key,
    required this.ingredientsOpacity,
    required this.suggestionsOpacity,
  });

  double ingredientsOpacity;
  double suggestionsOpacity;

  @override
  RecipesSearchBarState createState() => RecipesSearchBarState();
}

class RecipesSearchBarState extends ConsumerState<RecipeSearchBarOpened> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipeSearchViewModel.notifier).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(recipeSearchViewModel).maybeWhen(
        orElse: () {
          return Container();
        },
        loading: () => const SearchingSuggestions(),
        ready: (suggestions, ingredients, mealType, skillLevel) => Container(
              color: Colors.transparent,
              alignment: Alignment.topCenter,
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
                        label: mealTypeLabel,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SearchAdditioalSettings(
                        choiceItems: [
                          RecipeSearchSettingsChip(
                            label: breakfastLabel,
                            settingsType: RecipeSettings.meal,
                          ),
                          RecipeSearchSettingsChip(
                            label: lunchLabel,
                            settingsType: RecipeSettings.meal,
                          ),
                          RecipeSearchSettingsChip(
                            label: dinnerLabel,
                            settingsType: RecipeSettings.meal,
                          ),
                          RecipeSearchSettingsChip(
                            label: snackLabel,
                            settingsType: RecipeSettings.meal,
                          ),
                        ],
                      ),
                      RecipeSearchHeader(
                        label: cookingSkillLabel,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SearchAdditioalSettings(
                        choiceItems: [
                          RecipeSearchSettingsChip(
                            label: easyLabel,
                            settingsType: RecipeSettings.skill,
                          ),
                          RecipeSearchSettingsChip(
                            label: mediumLabel,
                            settingsType: RecipeSettings.skill,
                          ),
                          RecipeSearchSettingsChip(
                            label: expertLabel,
                            settingsType: RecipeSettings.skill,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ingredients.isNotEmpty
                                ? SelectedIngredientsList()
                                : Container(),
                            suggestions.isNotEmpty
                                ? SuggestionsList(
                                    search: ref
                                        .read(recipeSearchViewModel.notifier)
                                        .search,
                                    suggestions: suggestions,
                                    opacity: 1,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
