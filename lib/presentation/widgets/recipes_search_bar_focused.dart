import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeSearchBarFocused extends ConsumerStatefulWidget {
  RecipeSearchBarFocused({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecipeSearchBarFocusedState();
}

class _RecipeSearchBarFocusedState
    extends ConsumerState<RecipeSearchBarFocused> {
  final TextEditingController _recipesSearchController =
      TextEditingController();
  late FocusNode _focusNode;

  void setUp() {
    _focusNode = FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _focusNode.requestFocus();
    });
  }

  @override
  void initState() {
    setUp();
    super.initState();
  }

  @override
  void dispose() {
    _recipesSearchController.dispose();

    super.dispose();
  }

  void prefixIconOnTap() {
    ref.read(searchBarModel.notifier).expandSearchBar();

    ref.read(recommendedRecipesViewModel.notifier).loadRecipeRecommendation();
    ref.read(searchBarModel.notifier).toggleAppBar(true, true);

    context.router.replace(RecipesRoute());
  }

  void suffixIconOnTap() {
    ref.read(recipeSearchViewModel).maybeWhen(
          orElse: () => {},
          ready: ((suggestions, ingredients, mealType, skillLevel) {
            ref.read(searchBarModel.notifier).expandSearchBar();

            context.router.push(SearchDoneRoute());
          }),
        );
  }

  void onSubmitted(String search) {
    if (search.isEmpty &&
        ref.read(recipeSearchViewModel.notifier).selectedIngredients.isEmpty) {
      ref.read(recommendedRecipesViewModel.notifier).loadRecipeRecommendation();
      ref.read(searchBarModel.notifier).expandSearchBar();
    } else {
      ref.read(recipeSearchViewModel.notifier).findRecipes();
    }
  }

  void onChanged(String search) {
    ref.read(recipeSearchViewModel.notifier).search = search;
    ref.read(recipeSearchViewModel.notifier).searchRecipes(search);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          focusNode: _focusNode,
          controller: _recipesSearchController,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            prefixIcon: Container(
              alignment: Alignment.centerLeft,
              width: 20,
              child: GestureDetector(
                onTap: prefixIconOnTap,
                child: const Icon(Icons.arrow_back),
              ),
            ),
            suffixIcon: GestureDetector(
                onTap: suffixIconOnTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: 100,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(210),
                      ),
                      height: 30,
                      width: 80,
                      child: Text(
                        AppStrings.search,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )),
            hintText: AppStrings.recipeSearchHint,
            hintStyle: Theme.of(context).textTheme.labelMedium,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
          onSubmitted: onSubmitted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
