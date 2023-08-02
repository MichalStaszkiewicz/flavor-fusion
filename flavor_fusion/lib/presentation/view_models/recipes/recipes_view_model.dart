import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesState.initial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);

  final List<String> _ingredientsList = [
    'Onion',
    'Garlic',
    'Tomatoes',
    'Carrots',
    'Potatoes',
    'Bell Pepper',
    'Olive Oil',
    'Salt',
    'Pepper',
    'Oregano',
    'Basil',
    'Cilantro',
    'Ginger',
    'Parsley',
    'Spinach',
    'Sugar',
    'Flour',
    'Eggs',
    'Butter',
    'Vegetable Oil',
    'Radish',
    'Lettuce',
    'Soy Sauce',
    'Milk',
    'Cheese',
    'Pasta',
    'Rice',
    'Celery',
    'Sprouts',
    'Lemon',
  ];

  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    this.state = RecipesState.search(
      state.suggestions,
      state.selectedIngredients.where((item) => item != ingredient).toList(),
    );
  }

  void addSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    if (state.selectedIngredients.contains(ingredient)) {
      this.state =
          RecipesState.search(state.suggestions, state.selectedIngredients);
    } else {
      this.state = RecipesState.search(
          state.suggestions, [...state.selectedIngredients, ingredient]);
    }
  }

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

  void seachRecipes(String search) {
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;
      List<String> searchList = [];
      if (search.isNotEmpty) {
        for (String ingredient in _ingredientsList) {
          if (ingredient.toLowerCase().contains(search.toLowerCase())) {
            searchList.add(ingredient);
          }
        }
        this.state = RecipesState.search(searchList, state.selectedIngredients);
      } else {
        this.state = RecipesState.search([], state.selectedIngredients);
      }
    } else {
      state = RecipesState.search([], []);
    }
  }
}
