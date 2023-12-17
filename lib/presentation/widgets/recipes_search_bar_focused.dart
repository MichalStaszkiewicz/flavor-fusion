import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeSearchBarFocused extends ConsumerStatefulWidget {
  RecipeSearchBarFocused({super.key, required this.searchBarOpened});
  ValueNotifier<bool> searchBarOpened;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecipeSearchBarFocusedState();
}

class _RecipeSearchBarFocusedState
    extends ConsumerState<RecipeSearchBarFocused> {
  final TextEditingController _recipesSearchController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _recipesSearchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: UniqueKey(),
      autofocus: true,
      controller: _recipesSearchController,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        prefixIcon: Container(
          alignment: Alignment.centerLeft,
          width: 20,
          child: GestureDetector(
            onTap: () {
              //    stateKey = UniqueKey();
              //   _focusNode.nearestScope!.unfocus();
              widget.searchBarOpened.value = false;
              ref
                  .read(recommendedRecipesViewModel.notifier)
                  .loadRecipeRecommendation();
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        suffixIcon: GestureDetector(
            onTap: () {
              ref.read(recipeSearchViewModel).maybeWhen(
                    orElse: () => {},
                    ready: ((suggestions, ingredients, mealType, skillLevel) {
                      //    _recipesSearchFocused = !_recipesSearchFocused;

                      //     _focusNode.nearestScope!.unfocus();
                      widget.searchBarOpened.value = false;
                      context.router.push(SearchDoneRoute());

                      setState(() {});
                    }),
                  );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: 100,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(210),
                  ),
                  height: 30,
                  width: 80,
                  child: Text(
                    'Search',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            )),
        hintText: searchHint,
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
      onSubmitted: (search) {
        //  _recipesSearchFocused = !_recipesSearchFocused;

        if (search.isEmpty &&
            ref
                .read(recipeSearchViewModel.notifier)
                .selectedIngredients
                .isEmpty) {
          ref
              .read(recommendedRecipesViewModel.notifier)
              .loadRecipeRecommendation();
          widget.searchBarOpened.value = false;
        } else {
          ref.read(recipeSearchViewModel.notifier).findRecipes();
        }
      },
      onChanged: (text) {
        ref.read(recipeSearchViewModel.notifier).search = text;
        ref.read(recipeSearchViewModel.notifier).searchRecipes(text);
      },
      onTapOutside: (ptr) {},
    );
  }
}
