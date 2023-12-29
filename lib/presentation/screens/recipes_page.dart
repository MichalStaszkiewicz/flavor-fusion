import 'package:auto_route/auto_route.dart';

import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';

import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';

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
  late Animation _ingredientsAnimation;
  late AnimationController _suggestionsAnimationController;
  late Animation _suggestionsAnimation;

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

  void manageAnimations(List<String> suggestions, List<String> ingredients) {
    if (ingredients.isNotEmpty &&
        _ingredientsAnimationController.status != AnimationStatus.completed) {
      _ingredientsAnimationController.forward();
    }
    if (ingredients.isEmpty &&
        _ingredientsAnimationController.status == AnimationStatus.completed) {
      _ingredientsAnimationController.reverse();
    }
    if (suggestions.isNotEmpty &&
        _suggestionsAnimationController.status != AnimationStatus.completed) {
      _suggestionsAnimationController.forward();
    }
    if (suggestions.isEmpty &&
        _suggestionsAnimationController.status == AnimationStatus.completed) {
      _suggestionsAnimationController.reverse();
    }
  }

  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    _ingredientsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _ingredientsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_ingredientsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    _suggestionsAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _suggestionsAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_suggestionsAnimationController)
      ..addListener(() {
        setState(() {});
      });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recommendedRecipesViewModel.notifier).initRecommendedRecipes();
    });

    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _ingredientsAnimationController.dispose();
    super.dispose();
  }

  UniqueKey stateKey = UniqueKey();
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
                duration: const Duration(milliseconds: 150),
                child: Container(
                  key: stateKey,
                  child: recipesState.maybeWhen(
                      loading: () => _buildLoading(),
                      orElse: () => Container(),
                      ready: (
                        Map<String, List<Recipe>> recipes,
                      ) {
                        return _buildReady(recipes);
                      }),
                )),
          ],
        ),
      ),
    );
  }

  Center _buildReady(Map<String, List<Recipe>> recipes) {
    return Center(
      key: ValueKey(2),
      child: SingleChildScrollView(
        child: Column(
          children: [...createRecipeGroups(recipes)],
        ),
      ),
    );
  }

  Container _buildLoading() => Container(
        key: const ValueKey('recipes_loading'),
        child: Center(
          child: Lottie.asset(height: 250, 'assets/loading.json'),
        ),
      );

  Container _buildInitial() => Container();

  Container _buildError() => Container();
}
