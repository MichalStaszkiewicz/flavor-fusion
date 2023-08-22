import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  void apply(List<String> filters, SortBy sortBy) {
    if (state is FavoriteReady) {
      List<Recipe> filteredRecipies = [];

      if (sortBy == SortBy.alphabetical) {
        filteredRecipies.sort(((a, b) => a.name.compareTo(b.name)));
      } else if (sortBy == SortBy.caloriesAsc) {
        filteredRecipies.sort(((a, b) => a.nutrientsPerServing.calories
            .compareTo(b.nutrientsPerServing.calories)));
      } else if (sortBy == SortBy.caloriesDesc) {
        filteredRecipies.sort(((a, b) => b.nutrientsPerServing.calories
            .compareTo(a.nutrientsPerServing.calories)));
      } else if (sortBy == SortBy.time) {
        filteredRecipies.sort(((a, b) => a.totalTime!.compareTo(b.totalTime!)));
      }
      state = FavoriteState.ready(filteredRecipies);
    } else {
      print("state is not ready");
    }
  }
}
