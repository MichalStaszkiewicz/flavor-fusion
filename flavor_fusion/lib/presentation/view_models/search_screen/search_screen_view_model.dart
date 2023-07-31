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

    for (int i = 0; i < 15; i++) {
      Random random = Random();
      int randomIndex = random.nextInt(temporaryNames.length);
      _recipies.add(Recipe(
          ingredients: [],
          dietLabels: [],
          dishType: [],
          cuisineType: [],
          calories: random.nextInt(800).toDouble(),
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUI985op9Ux0GurEZLGuHMh9KAjYLZshg7Cw&usqp=CAU',
          cautions: [],
          label: temporaryNames[randomIndex],
          ingredientLines: [],
          mealType: [],
          healthLabels: [],
          totalWeight: random.nextInt(5).toDouble(),
          totalTime: random.nextInt(90),
          url: '',
          author: '',
          id: 7));
      _recipies[i] =
          _recipies[i].copyWith(dishType: [temporaryDishesTypes[randomIndex]]);
    }

    state = SearchScreenState.ready(List.from(_recipies));
  }

  void searchRecipies(String text) {
    if (state is SearchScreenReady) {
      final state = this.state as SearchScreenReady;
      final List<Recipe> tempRecipies = List.from(state.recipies);
      if (text.isNotEmpty) {
        List<Recipe> filteredRecipies = [];

        for (Recipe recipe in tempRecipies) {
          if (recipe.label.toLowerCase().contains(text.toLowerCase())) {
            filteredRecipies.add(recipe);
          }
        }

        this.state = SearchScreenState.ready(filteredRecipies);
      } else {
        this.state = SearchScreenState.ready(_recipies);
      }
    } else {
      print("state is not ready");
    }
  }

  void apply(List<String> filters, SortBy sortBy) {
    if (state is SearchScreenReady) {
      List<Recipe> filteredRecipies = [];

      for (Recipe recipe in _recipies) {
        for (int i = 0; i < recipe.dishType.length; i++) {}

        bool recipeIsValid = true;
        for (String filter in filters) {
          if (!recipe.dishType.contains(filter) &&
              !recipe.dietLabels.contains(filter) &&
              !recipe.mealType.contains(filter)) {
            recipeIsValid = false;
          }
        }
        if (recipeIsValid) {
          filteredRecipies.add(recipe);
        }
      }
      final List<Recipe> tempRecipies = List.from(filteredRecipies);
      if (sortBy == SortBy.alphabetical) {
        tempRecipies.sort(((a, b) => a.label.compareTo(b.label)));
      } else if (sortBy == SortBy.caloriesAsc) {
        tempRecipies.sort(((a, b) => a.calories.compareTo(b.calories)));
      } else if (sortBy == SortBy.caloriesDesc) {
        tempRecipies.sort(((a, b) => b.calories.compareTo(a.calories)));
      } else if (sortBy == SortBy.time) {
        tempRecipies.sort(((a, b) => a.totalTime.compareTo(b.totalTime)));
      }
      state = SearchScreenState.ready(filteredRecipies);
    } else {
      print("state is not ready");
    }
  }
}
