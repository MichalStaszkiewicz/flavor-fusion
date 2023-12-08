import 'dart:math';

import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utility/enums.dart';

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
    StateNotifierProvider<SearchScreenViewModel, SearchScreenState>(
        (ref) => SearchScreenViewModel());

class SearchScreenViewModel extends StateNotifier<SearchScreenState> {
  SearchScreenViewModel() : super(SearchScreenInitial());

  final List<Recipe> _recipies = [];

  void loadRecipies() {
    state = SearchScreenState.loading();

    state = SearchScreenState.ready(List.from(_recipies));
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

        this.state = SearchScreenState.ready(filteredRecipies);
      } else {
        this.state = SearchScreenState.ready(_recipies);
      }
    } else {}
  }

  void apply(List<String> filters, Map<String, SortBy> sortBy) {
    if (state is SearchScreenReady) {
      List<Recipe> filteredRecipies = _recipies;
    } else {}
  }
}
