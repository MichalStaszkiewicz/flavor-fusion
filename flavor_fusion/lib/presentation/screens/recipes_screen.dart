import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';

class RecipesScreen extends ConsumerStatefulWidget {
  const RecipesScreen({
    super.key,
  });
  @override
  RecipesScreenState createState() => RecipesScreenState();
}

class RecipesScreenState extends ConsumerState<RecipesScreen> {
  List<RecipeGroup> createRecipeGroups(List<Recipe> recipes) {
    List<Recipe> breakfast = [];
    List<Recipe> lunch = [];
    List<Recipe> dinner = [];
    for (Recipe recipe in recipes) {
      if (recipe.mealType.contains('breakfast')) {
        breakfast.add(recipe);
      } else if (recipe.mealType.contains('lunch')) {
        lunch.add(recipe);
      } else if (recipe.mealType.contains('dinner')) {
        dinner.add(recipe);
      }
    }
    List<RecipeGroup> recipeGroups = [];
    recipeGroups.add(RecipeGroup(recipes: breakfast, label: 'Breakfast'));
    recipeGroups.add(RecipeGroup(recipes: lunch, label: 'Lunch'));
    recipeGroups.add(RecipeGroup(recipes: dinner, label: 'Dinner'));
    return recipeGroups;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipesViewModel.notifier).loadRecipes();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipesState = ref.watch(recipesViewModel);

    return recipesState.when(
        error: () => _buildError(),
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        ready: (List<Recipe> recipes) => _buildReady(recipes));
  }

  Center _buildReady(List<Recipe> recipes) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [...createRecipeGroups(recipes)],
          ),
        ),
      ),
    );
  }

  Container _buildLoading() => Container();

  Container _buildInitial() => Container();

  Container _buildError() => Container();
}
