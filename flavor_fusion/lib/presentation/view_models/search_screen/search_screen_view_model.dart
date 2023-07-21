import 'dart:math';

import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<String> temporaryNames = [
  "Sphagetti",
  "Potatos",
  "Melon",
  "Apples",
  "Eggs"
];
final searchScreenViewModel =
    StateNotifierProvider<SearchScreenViewModel, SearchScreenState>(
        (ref) => SearchScreenViewModel());

class SearchScreenViewModel extends StateNotifier<SearchScreenState> {
  SearchScreenViewModel() : super(SearchScreenInitial());

  final List<Recipe> _recipies = [];
  List<Recipe> recipies = [];

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
          url: ''));
    }

    recipies.addAll(_recipies);

    state = SearchScreenState.ready();
  }

  void searchRecipies(String text) {
    state = SearchScreenState.searchingInProgress();

    if (text.isNotEmpty) {
      List<Recipe> filteredRecipies = [];

      for (Recipe recipe in recipies) {
        if (recipe.label.toLowerCase().contains(text.toLowerCase())) {
          filteredRecipies.add(recipe);
        }
      }

      recipies.clear();
      recipies.addAll(filteredRecipies);
    } else {
      recipies.clear();
      recipies.addAll(_recipies);
    }

    state = SearchScreenState.ready();
  }
}
