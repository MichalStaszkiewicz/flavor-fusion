import 'dart:math';

import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utility/enums.dart';
import 'states.dart';

List<String> temporaryNames = [
  "Sphagetti",
  "Potatos",
  "Melon",
  "Apples",
  "Eggs"
];
List<String> temporaryDishesTypes = [
  'bread',
  'salad',
  'preps',
  'cookies',
  'cookies'
];
final searchScreenViewModel =
    StateNotifierProvider<FilterFavoriteRecipes, FilterFavoriteState>(
        (ref) => FilterFavoriteRecipes());

class FilterFavoriteRecipes extends StateNotifier<FilterFavoriteState> {
  FilterFavoriteRecipes() : super(SearchScreenInitial());

  final List<Recipe> _recipies = [];

  void loadRecipies() {
    state = FilterFavoriteState.loading();

    state = FilterFavoriteState.ready(List.from(_recipies));
  }

  void searchRecipies(String text) {
    if (state is SearchScreenReady) {
      final state = this.state as SearchScreenReady;
      final List<Recipe> tempRecipies = List.from(state.recipies);
      if (text.isNotEmpty) {
        List<Recipe> filteredRecipies = [];

        for (Recipe recipe in tempRecipies) {
          if (recipe.name.toLowerCase().contains(text.toLowerCase())) {
            filteredRecipies.add(recipe);
          }
        }

        this.state = FilterFavoriteState.ready(filteredRecipies);
      } else {
        this.state = FilterFavoriteState.ready(_recipies);
      }
    } else {}
  }

  void apply(List<String> filters, Map<String, SortBy> sortBy) {
    if (state is SearchScreenReady) {
      List<Recipe> filteredRecipies = _recipies;
    } else {}
  }
}
