import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/ingredient.dart';
import '../../../data/models/ingredient_search.dart';
import '../../../data/models/recipe.dart';
import '../../../data/models/request_status.dart';
import '../../../data/models/suggestion.dart';
import '../../../data/repository/source_repository.dart';
import '../../screens/recipes_page.dart';
import '../../../presentation/view_models/recipes/states.dart';
import '../../../presentation/widgets/search_done.dart';
import '../../../presentation/widgets/suggestion_item.dart';
import '../../../utility/enums.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recommendedRecipesViewModel =
    StateNotifierProvider<RecipesViewModel, RecommendedRecipesState>(
  (ref) {
    return RecipesViewModel(RecommendedRecipesState.initial());
  },
);

class RecipesViewModel extends StateNotifier<RecommendedRecipesState> {
  RecipesViewModel(super._state);
  Map<String, List<Recipe>> _cachedRecommendedRecipes = {};

  void initRecommendedRecipes() async {
    state = RecommendedRecipesState.loading();

    _cachedRecommendedRecipes =
        await locator<SourceRepository>().getRecommendedRecipes().then((value) {
      state = RecommendedRecipesState.ready(value, false);
      return value;
    });
  }

  void openSearch() {
    state = RecommendedRecipesState.ready(_cachedRecommendedRecipes, true);
  }

  void loadRecipeRecommendation() {
    state = RecommendedRecipesState.ready(_cachedRecommendedRecipes, false);
  }
}
