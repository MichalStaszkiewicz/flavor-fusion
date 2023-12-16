import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_bar.dart';
import 'package:flavor_fusion/presentation/widgets/searching_in_progress.dart';
import 'package:flavor_fusion/strings.dart';
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
  @override
  void initState() {
    super.initState();
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: RecipeSearchBar(),
        ),
        body: ref.watch(recipeSearchViewModel).maybeWhen(
              loading: () => SearchingSuggestions(),
              orElse: () {
                return Container();
              },
              done: (recipes, nextPage) => Container(
                height: double.infinity,
                key: const ValueKey('recipes_searching'),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  recipes.isNotEmpty
                      ? Expanded(
                          child: Container(
                            child: ListView.builder(
                                controller: _scrollController,
                                itemCount: recipes.length,
                                itemBuilder: (context, index) {
                                  if (index == recipes.length - 1 &&
                                      reachedEnd &&
                                      nextPage) {
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
                          height:
                              locator<Global>().deviceDimenstions.height / 1.3,
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Lottie.asset('assets/empty_search.json'),
                              const Text(
                                  textAlign: TextAlign.center,
                                  emptySearchMessage),
                            ],
                          )),
                        ),
                ]),
              ),
            ));
  }
}
