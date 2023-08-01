import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../../utility/service_locator.dart';

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipesState = ref.watch(recipesViewModel);

    return Stack(
      children: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: recipesState.maybeWhen(
            ready: (List<Recipe> recipes) => _buildReady(recipes),
            orElse: () => Container(),
          ),
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: recipesState.maybeWhen(
            search: (suggestions) => _buildSearch(suggestions),
            orElse: () => Container(),
          ),
        ),
      ],
    );
  }

  Container _buildSearch(List<String> suggestions) {
    return Container(
      key: ValueKey('recipes_search'),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(child: Column(children: [
                    
                  ],),),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Suggestions",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: suggestions.length,
                      itemBuilder: (context, index) => Container(
                            height: 50,
                            child: Text(locator<Global>()
                                .capitalize(suggestions[index])),
                          ))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Center _buildReady(List<Recipe> recipes) {
    return Center(
      key: ValueKey('recipes_ready'),
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
