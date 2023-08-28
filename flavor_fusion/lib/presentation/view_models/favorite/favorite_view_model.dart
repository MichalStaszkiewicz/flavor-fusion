import 'dart:collection';
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
  final List<Recipe> _originalRecipes = [];

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
      if (_originalRecipes.isEmpty) {
        _originalRecipes.addAll(favoriteRecipes);
      }
      state = FavoriteState.ready(List.from(_recipies));
    }
    state = FavoriteState.ready(List.from(_recipies));
  }

  void searchRecipies(String text) {
    if (state is FavoriteReady) {
      final state = this.state as FavoriteReady;
      final List<Recipe> tempRecipies = List.from(_originalRecipes);
      if (text.isNotEmpty) {
        List<Recipe> filteredRecipies = [];

        for (Recipe recipe in tempRecipies) {
          if (recipe.name.toLowerCase().contains(text.toLowerCase())) {
            filteredRecipies.add(recipe);
          }
        }

        this.state = FavoriteState.ready(filteredRecipies);
      } else {
        this.state = FavoriteState.ready(_originalRecipes);
      }
    } else {
      print("state is not ready");
    }
  }

  void apply(SortBy sortBy, double minTime, double minCal) {
    if (state is FavoriteReady) {
      Global global = locator<Global>();
      List<Recipe> filteredRecipes = List.from(
          _originalRecipes); // Make a copy to avoid modifying the original list

      if (sortBy == SortBy.caloriesAscending) {
        filteredRecipes.sort((a, b) => a.nutrientsPerServing.calories
            .round()
            .compareTo(b.nutrientsPerServing.calories.round()));
      } else if (sortBy == SortBy.caloriesDescending) {
        filteredRecipes.sort((a, b) => b.nutrientsPerServing.calories
            .round()
            .compareTo(a.nutrientsPerServing.calories.round()));
      } else if (sortBy == SortBy.timeAscending) {
        filteredRecipes.sort((a, b) => global
            .minutesFromTotalTime(a.totalTime!)
            .compareTo(global.minutesFromTotalTime(b.totalTime!)));
      } else if (sortBy == SortBy.timeDescending) {
        filteredRecipes.sort((a, b) => global
            .minutesFromTotalTime(b.totalTime!)
            .compareTo(global.minutesFromTotalTime(a.totalTime!)));
      }

      List<Recipe> resultRecipes = filteredRecipes
          .where((element) =>
              global.minutesFromTotalTime(element.totalTime!) >= minTime &&
              element.nutrientsPerServing.calories >= minCal)
          .toList();

      state = FavoriteState.ready(resultRecipes);
    } else {
      print("state is not ready");
    }
  }
}
