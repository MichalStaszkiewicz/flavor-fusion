import 'dart:math';

import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../../data/models/recipe.dart';
import '../../../data/repository/source_repository.dart';
import '../../../domain/services/favorite_recipe.dart';
import '../../../utility/enums.dart';
import '../../../utility/service_locator.dart';
import '../search_screen/search_screen_view_model.dart';
import 'states.dart';

var favoriteViewModel = StateNotifierProvider<FavoriteViewModel, FavoriteState>(
    (ref) => FavoriteViewModel(FavoriteInitial()));

class FavoriteViewModel extends StateNotifier<FavoriteState> {
  FavoriteViewModel(super.state);

  final List<Recipe> _recipies = [];
/*
  void loadRecipies() {
    state = FavoriteState.loading();
    _recipies.clear();
    _recipies.addAll(
        List.from(locator<FavoriteRecipeService>().getFavoriteRecipes()));

    state = FavoriteState.ready(List.from(_recipies));
  }
*/

  void refreshLocalData() async {
    state = FavoriteState.loading();
    await locator<SourceRepository>().getFavoriteRecipes().then((recipes) {
      _recipies.clear();
      _recipies.addAll(recipes);
      state = FavoriteState.ready(_recipies);
      return recipes;
    });
  }

  void loadRecipies() async {
    state = FavoriteState.loading();
    if (_recipies.isEmpty) {
      List<Recipe> favoriteRecipes =
          await locator<SourceRepository>().getFavoriteRecipes();
      _recipies.addAll(favoriteRecipes);
      state = FavoriteState.ready(List.from(_recipies));
    }
    state = FavoriteState.ready(List.from(_recipies));
  }

  void searchRecipies(String text) {
    if (state is FavoriteReady) {
      final state = this.state as FavoriteReady;
      final List<Recipe> tempRecipies = List.from(_recipies);
      if (text.isNotEmpty) {
        List<Recipe> filteredRecipies = [];

        for (Recipe recipe in tempRecipies) {
          if (recipe.name.toLowerCase().contains(text.toLowerCase())) {
            filteredRecipies.add(recipe);
          }
        }

        this.state = FavoriteState.ready(filteredRecipies);
      } else {
        this.state = FavoriteState.ready(_recipies);
      }
    } else {
      print("state is not ready");
    }
  }

  void apply(SortBy sortBy) {
    if (state is FavoriteReady) {
      Global global = locator<Global>();
      List<Recipe> filteredRecipies = _recipies;
      if (sortBy == SortBy.caloriesAscending) {
        print('selected asc calories ');
        filteredRecipies.sort((a, b) => a.nutrientsPerServing.calories
            .round()
            .compareTo(b.nutrientsPerServing.calories.round()));
      } else if (sortBy == SortBy.caloriesDescending) {
        filteredRecipies.sort((a, b) =>b.nutrientsPerServing.calories
            .round()
            .compareTo(a.nutrientsPerServing.calories.round()));
      } else if (sortBy == SortBy.timeAscending) {
        filteredRecipies.sort((a, b) => global
            .minutesFromTotalTime(a.totalTime!)
            .compareTo(global.minutesFromTotalTime(b.totalTime!)));
      } else if (sortBy == SortBy.timeDescending) {
        filteredRecipies.sort((a, b) => global
            .minutesFromTotalTime(b.totalTime!)
            .compareTo(global.minutesFromTotalTime(a.totalTime!)));
      }

      state = FavoriteState.ready(filteredRecipies);
    } else {
      print("state is not ready");
    }
  }
}
