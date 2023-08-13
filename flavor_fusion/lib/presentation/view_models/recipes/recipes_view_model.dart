import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/presentation/screens/recipes_screen.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/states.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/recipe.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recipesViewModel = StateNotifierProvider<RecipesViewModel, RecipesState>(
    (ref) => RecipesViewModel(RecipesState.initial()));

class RecipesViewModel extends StateNotifier<RecipesState> {
  RecipesViewModel(super._state);

  List<String> _ingredientsCashed = [];

  List<String> get selectedIngredients => _ingredientsCashed;

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
      List<String> tempList = [];
      tempList.addAll(state.suggestions);
      int selectedIngredientIndex = tempList.indexWhere(
          (element) => element.toLowerCase() == ingredient.toLowerCase());
      String suggestion = tempList[selectedIngredientIndex];
      suggestionListKey.currentState?.removeItem(
          selectedIngredientIndex,
          (context, animation) => SuggestionItem(
              suggestion: suggestion,
              animation: animation,
              search: state.search),
          duration: const Duration(milliseconds: 300));
      tempList.removeAt(selectedIngredientIndex);

      this.state =
          RecipesState.search(tempList, _ingredientsCashed, state.search);
    }
  }

  void initRecommendedRecipes() {
    locator<SourceRepository>().getRecommendedRecipes();
    if (_recipes.isNotEmpty) {
      return;
    }
    _recipes.add(Recipe(
        label: 'Sandwitches',
        image: 'image',
        url: 'url',
        dietLabels: [],
        healthLabels: [],
        cautions: [],
        ingredientLines: ['Pasta', 'Cheese', 'Coca Cola', 'Pepsi', 'Sprite'],
        ingredients: [
          Ingredient(
              text: '',
              quantity: 100,
              measure: 'g',
              food: 'Pasta',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
          Ingredient(
              text: '',
              quantity: 100,
              measure: 'g',
              food: 'Cheese',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
          Ingredient(
              text: '',
              quantity: 2,
              measure: 'l',
              food: 'Pepsi',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
        ],
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
        ingredientLines: ['Pasta', 'Cheese', 'Coca Cola', 'Pepsi', 'Sprite'],
        ingredients: [
          Ingredient(
              text: '',
              quantity: 100,
              measure: 'g',
              food: 'Pasta',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
          Ingredient(
              text: '',
              quantity: 100,
              measure: 'g',
              food: 'Cheese',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
          Ingredient(
              text: '',
              quantity: 2,
              measure: 'l',
              food: 'Pepsi',
              weight: 0,
              foodCategory: '',
              foodId: '',
              image: ''),
        ],
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
    state = RecipesState.recipesRecommendation(_recipes);
  }

  void loadRecipeRecommendation() {
    state = RecipesRecipesRecommendation(_recipes);
  }

  void findRecipes() {
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

    state = RecipesState.searchDone(recipes);
  }

  void seachRecipes(String search) {
    List<String> currentSuggestions = [];
    if (state is RecipesSearch) {
      final state = this.state as RecipesSearch;
      if (search == '') {
        this.state = RecipesState.search([], _ingredientsCashed, '');
        return;
      }
      currentSuggestions.addAll(state.suggestions);
      for (int i = 0; i < _ingredientsList.length; i++) {
        if (_ingredientsList[i].toLowerCase().contains(search.toLowerCase()) &&
            !currentSuggestions.contains(_ingredientsList[i].toLowerCase()) &&
            !_ingredientsCashed.contains(_ingredientsList[i])) {
          suggestionListKey.currentState?.insertItem(currentSuggestions.length,
              duration: const Duration(milliseconds: 300));
          currentSuggestions.add(_ingredientsList[i].toLowerCase());
        }
      }
      for (int i = 0; i < currentSuggestions.length; i++) {
        if (!currentSuggestions[i]
            .toLowerCase()
            .contains(search.toLowerCase())) {
          String suggestion = currentSuggestions[i];
          suggestionListKey.currentState?.removeItem(
              i,
              (context, animation) => SuggestionItem(
                    suggestion: suggestion,
                    animation: animation,
                    search: search,
                  ),
              duration: const Duration(milliseconds: 300));
          currentSuggestions.removeAt(i);
          i--;
        }
      }

      this.state =
          RecipesState.search(currentSuggestions, _ingredientsCashed, search);
    } else {
      state = RecipesState.search([], _ingredientsCashed, '');
    }
  }
}
