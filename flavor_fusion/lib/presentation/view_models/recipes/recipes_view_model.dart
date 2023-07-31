import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesInitial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super.state);

  void loadRecipes() {
    List<Recipe> recipes = [
      Recipe(
          label: 'Sandwiches',
          image: 'image',
          url: 'url',
          dietLabels: [],
          healthLabels: [],
          cautions: [],
          ingredientLines: [],
          ingredients: [],
          calories: 500,
          totalWeight: 100,
          totalTime: 45,
          cuisineType: [],
          mealType: ['breakfast'],
          dishType: [],
          id: 1,
          author: 'author'),
      Recipe(
          label: 'Spaghetti',
          image: 'image',
          url: 'url',
          dietLabels: [],
          healthLabels: [],
          cautions: [],
          ingredientLines: [],
          ingredients: [],
          calories: 1500,
          totalWeight: 100,
          totalTime: 30,
          cuisineType: [],
          mealType: ['lunch'],
          dishType: [],
          id: 2,
          author: 'author'),
      Recipe(
          label: 'Chicken',
          image: 'image',
          url: 'url',
          dietLabels: [],
          healthLabels: [],
          cautions: [],
          ingredientLines: [],
          ingredients: [],
          calories: 340,
          totalWeight: 100,
          totalTime: 9,
          cuisineType: [],
          mealType: ['dinner'],
          dishType: [],
          id: 3,
          author: 'author'),
    ];
    state = RecipesState.ready(recipes);
  }
}
