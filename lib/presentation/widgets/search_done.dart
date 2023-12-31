import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/searching_in_progress.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/asset_path.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class SearchDonePage extends ConsumerStatefulWidget {
  const SearchDonePage({
    super.key,
  });

  @override
  SearchDonePageState createState() => SearchDonePageState();
}

class SearchDonePageState extends ConsumerState<SearchDonePage> {
  final ScrollController _scrollController = ScrollController();
  bool reachedEnd = false;
  void setUp() {
    _scrollController.addListener(() async {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange &&
          !reachedEnd) {
        reachedEnd = true;
        ref
            .read(recipeSearchViewModel.notifier)
            .loadNextRecipesPage()
            .then((value) => reachedEnd = false);
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipeSearchViewModel.notifier).findRecipes();
    });
  }

  @override
  void initState() {
    setUp();
    super.initState();
  }

  Widget renderRecipeList(List<Recipe> recipes, bool nextPage) {
    return recipes.isNotEmpty
        ? Expanded(
            child: Container(
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    if (index == recipes.length - 1 && reachedEnd && nextPage) {
                      return Container(
                        height: 50,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return DishItemWidget(recipe: recipes[index]);
                  }),
            ),
          )
        : Container(
            height: MediaQuery.of(context).size.height / 1.3,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Lottie.asset(AssetPath.nothingFound),
                const Text(
                    textAlign: TextAlign.center, AppStrings.emptySearchMessage),
              ],
            )),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ref.watch(recipeSearchViewModel).maybeWhen(
              initial: () {
                return Container();
              },
              loading: () => Searching(),
              done: (recipes, nextPage) {
                return Container(
                  height: double.infinity,
                  key: const ValueKey('recipes_searching'),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child:
                      Column(children: [renderRecipeList(recipes, nextPage)]),
                );
              },
              orElse: () {
                return Container();
              },
            ));
  }
}
