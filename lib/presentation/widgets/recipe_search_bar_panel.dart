import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/filter_favorite_recipes/states.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
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

@RoutePage(name: "RecipeSearchPanelRoute")
class RecipeSearchBarPanel extends ConsumerStatefulWidget {
  RecipeSearchBarPanel({
    super.key,
  });

  @override
  RecipeSearchBarPanelState createState() => RecipeSearchBarPanelState();
}

class RecipeSearchBarPanelState extends ConsumerState<RecipeSearchBarPanel> {
  void setUp() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(searchBarModel.notifier).toggleAppBar(true, false);
      ref.read(recipeSearchViewModel.notifier).init();
    });
  }

  @override
  void initState() {
    setUp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(recipeSearchViewModel).maybeWhen(
        orElse: () {
          return Container();
        },
        initial: () {
          return Container();
        },
        loading: () => Scaffold(
            resizeToAvoidBottomInset: false, body: Center(child: Searching())),
        ready: (suggestions, ingredients, mealType, skillLevel,
                allowAnimations) =>
            Scaffold(
              body: Container(
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
                          label: AppStrings.mealTypeLabel,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SearchAdditioalSettings(
                          choiceItems: [
                            RecipeSearchSettingsChip(
                              label: AppStrings.breakfastLabel,
                              settingsType: RecipeSettings.meal,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                            RecipeSearchSettingsChip(
                              label: AppStrings.lunchLabel,
                              settingsType: RecipeSettings.meal,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                            RecipeSearchSettingsChip(
                              label: AppStrings.dinnerLabel,
                              settingsType: RecipeSettings.meal,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                            RecipeSearchSettingsChip(
                              label: AppStrings.snackLabel,
                              settingsType: RecipeSettings.meal,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                        RecipeSearchHeader(
                          label: AppStrings.cookingSkillLabel,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SearchAdditioalSettings(
                          choiceItems: [
                            RecipeSearchSettingsChip(
                              label: AppStrings.easyLabel,
                              settingsType: RecipeSettings.skill,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                            RecipeSearchSettingsChip(
                              label: AppStrings.mediumLabel,
                              settingsType: RecipeSettings.skill,
                              chipColor: Theme.of(context).primaryColor,
                            ),
                            RecipeSearchSettingsChip(
                              label: AppStrings.expertLabel,
                              settingsType: RecipeSettings.skill,
                              chipColor: Theme.of(context).primaryColor,
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
              ),
            ));
  }
}
