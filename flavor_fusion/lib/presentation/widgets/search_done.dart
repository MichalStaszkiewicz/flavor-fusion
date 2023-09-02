import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchDone extends ConsumerStatefulWidget {
  SearchDone({super.key, required this.recipes, required this.search});
  List<Recipe> recipes;
  String search;
  @override
  SearchDoneState createState() => SearchDoneState();
}

class SearchDoneState extends ConsumerState<SearchDone> {
  ScrollController _scrollController = ScrollController();
  bool reachedEnd = false;
  @override
  void initState() async {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange &&
          !reachedEnd) {
        reachedEnd = true;
        ref
            .read(recipesViewModel.notifier)
            .searchRecipes(widget.search)
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
      child: ListView.builder(
          controller: _scrollController,
          itemCount: widget.recipes.length,
          itemBuilder: (context, index) =>
              DishItemWidget(recipe: widget.recipes[index])),
    );
  }
}
