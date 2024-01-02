import 'package:auto_route/auto_route.dart';

import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';

import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flavor_fusion/utility/asset_path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../data/models/recipe.dart';

@RoutePage()
class RecipesPage extends ConsumerStatefulWidget {
  RecipesPage();

  @override
  RecipesScreenState createState() => RecipesScreenState();
}

class RecipesScreenState extends ConsumerState<RecipesPage>
    with TickerProviderStateMixin {
  late AnimationController _ingredientsAnimationController;

  void setUp() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recommendedRecipesViewModel.notifier).initRecommendedRecipes();
    });
  }

  List<RecipeGroup> createRecipeGroups(Map<String, List<Recipe>> recipes) {
    List<Recipe> breakfast = recipes['breakfast']!;
    List<Recipe> lunch = recipes['lunch']!;
    List<Recipe> dinner = recipes['dinner']!;

    List<RecipeGroup> recipeGroups = [];
    recipeGroups.add(RecipeGroup(recipes: breakfast, label: 'Breakfast'));
    recipeGroups.add(RecipeGroup(recipes: lunch, label: 'Lunch'));
    recipeGroups.add(RecipeGroup(recipes: dinner, label: 'Dinner'));
    return recipeGroups;
  }

  @override
  void initState() {
    setUp();
    super.initState();
  }

  @override
  void dispose() {
    _ingredientsAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipesState = ref.watch(recommendedRecipesViewModel);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: recipesState.maybeWhen(
                  loading: () => _buildLoading(),
                  orElse: () => Container(),
                  ready: (
                    Map<String, List<Recipe>> recipes,
                  ) {
                    return _buildReady(recipes);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildReady(Map<String, List<Recipe>> recipes) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [...createRecipeGroups(recipes)],
        ),
      ),
    );
  }

  Container _buildLoading() => Container(
        child: Center(
          child: Lottie.asset(height: 250, AssetPath.pageLoading),
        ),
      );

  Container _buildInitial() => Container();

  Container _buildError() => Container();
}
