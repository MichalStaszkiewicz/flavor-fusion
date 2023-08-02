import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesState.initial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);
  List<String> _ingredientsCashed = [];

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
  List<Recipe> _recipes = [];
  void removeSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    _ingredientsCashed.removeWhere((element) => element == ingredient);
    this.state = RecipesState.search(
      state.suggestions,
      _ingredientsCashed,
      state.search,
    );
  }

  void addSelectedIngredient(String ingredient) {
    final state = this.state as RecipesSearch;
    if (_ingredientsCashed.contains(ingredient)) {
      this.state = RecipesState.search(
          state.suggestions, _ingredientsCashed, state.search);
    } else {
      _ingredientsCashed.add(ingredient);
      this.state = RecipesState.search(
          state.suggestions, _ingredientsCashed, state.search);
    }
  }

  void loadRecommendedRecipes() {
    _recipes.add(Recipe(
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
    _recipes.add(Recipe(
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
    _recipes.add(Recipe(
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
    state = RecipesState.ready(_recipes);
  }

  void loadRecipes() {
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;

      if (state.selectedIngredients.isEmpty &&
          state.suggestions.isEmpty &&
          state.search.isEmpty) {
        this.state = RecipesState.ready(_recipes);
      } else {
        List<Recipe> recipes = [
          Recipe(
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
              author: 'author'),
        ];

        this.state = RecipesState.searching(recipes);
      }
    }
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
        this.state =
            RecipesState.search(searchList, _ingredientsCashed, search);
      } else {
        this.state = RecipesState.search([], _ingredientsCashed, state.search);
      }
    } else {
      state = RecipesState.search([], _ingredientsCashed, '');
    }
  }
}
