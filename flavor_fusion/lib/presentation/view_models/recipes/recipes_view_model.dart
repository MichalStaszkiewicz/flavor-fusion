import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesState.initial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);

  void loadRecipes() {
    List<Recipe> recipes = [];

    recipes.add(Recipe(
        label: 'Sandwitches',
        image: 'image',
        url: 'url',
        dietLabels: [],
        healthLabels: [],
        cautions: [],
        ingredientLines: [],
        ingredients: [],
        calories: 350,
        totalWeight: 34,
        totalTime: 76,
        cuisineType: [],
        mealType: ['breakfast'],
        dishType: [],
        id: 1,
        author: 'author'));
    recipes.add(Recipe(
        label: 'Spaghetti',
        image: 'image',
        url: 'url',
        dietLabels: [],
        healthLabels: [],
        cautions: [],
        ingredientLines: [],
        ingredients: [],
        calories: 350,
        totalWeight: 34,
        totalTime: 76,
        cuisineType: [],
        mealType: ['lunch'],
        dishType: [],
        id: 2,
        author: 'author'));
    recipes.add(Recipe(
        label: 'Chicken',
        image: 'image',
        url: 'url',
        dietLabels: [],
        healthLabels: [],
        cautions: [],
        ingredientLines: [],
        ingredients: [],
        calories: 350,
        totalWeight: 34,
        totalTime: 76,
        cuisineType: [],
        mealType: ['dinner'],
        dishType: [],
        id: 3,
        author: 'author'));
    state = RecipesState.ready(recipes);
  }
}
