import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class SearchDone extends ConsumerStatefulWidget {
  SearchDone(
      {super.key,
      required this.recipes,
      required this.search,
      required this.loadingNextPage});
  List<Recipe> recipes;
  String search;
  bool loadingNextPage;
  @override
  SearchDoneState createState() => SearchDoneState();
}

class SearchDoneState extends ConsumerState<SearchDone> {
  ScrollController _scrollController = ScrollController();
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
            .read(recipesViewModel.notifier)
            .loadNextRecipesPage()
            .then((value) => reachedEnd = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      key: const ValueKey('recipes_searching'),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        widget.recipes.isNotEmpty
            ? Expanded(
                child: Container(
                  child: ListView.builder(
                      controller: _scrollController,
                      itemCount: widget.recipes.length,
                      itemBuilder: (context, index) =>
                          DishItemWidget(recipe: widget.recipes[index])),
                ),
              )
            : Container(
                height: locator<Global>().deviceDimenstions.height / 1.3,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Lottie.asset('assets/empty_search.json'),
                    const Text(textAlign: TextAlign.center, emptySearchMessage),
                  ],
                )),
              ),
        widget.loadingNextPage
            ? Container(
                height: 50,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Container()
      ]),
    );
  }
}
