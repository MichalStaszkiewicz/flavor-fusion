import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/search_recipes/search_recipes_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_search_header.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/suggestion.dart';
import '../../utility/app_router.dart';
import '../../utility/enums.dart';
import '../../utility/global.dart';
import '../screens/recipes_page.dart';
import '../view_models/recipes/recipes_view_model.dart';

final GlobalKey<AnimatedListState> suggestionListKey =
    GlobalKey<AnimatedListState>();

class SuggestionsList extends ConsumerStatefulWidget {
  SuggestionsList(
      {super.key,
      required this.search,
      required this.suggestions,
      required this.opacity});

  List<Suggestion> suggestions;
  String search;
  double opacity;

  @override
  SuggestionsListState createState() => SuggestionsListState();
}

class SuggestionsListState extends ConsumerState<SuggestionsList> {
  void ontap(int index) {
    if (widget.suggestions[index].type == SuggestionType.ingredient) {
      ref.read(recipeSearchViewModel.notifier).addSelectedIngredient(
          locator<Global>().capitalize(widget.suggestions[index].name));
    } else {
      context.router.push(DishDetailsRoute(
          name: locator<Global>().capitalize(widget.suggestions[index].name),
          recipe: widget.suggestions[index].recipe!));
    }
  }

  Widget renderDivider(int index) {
    return index == 0 || index == widget.suggestions.length
        ? Container()
        : Container(
            color: Colors.black,
            height: 1,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.opacity,
      child: Container(
        child: Column(
          children: [
            RecipeSearchHeader(
              label: AppStrings.suggestions,
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedList(
                key: suggestionListKey,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                initialItemCount: widget.suggestions.length,
                itemBuilder: (context, index, animation) => GestureDetector(
                    key: UniqueKey(),
                    onTap: () {
                      ontap(index);
                    },
                    child: Container(
                      child: Column(
                        children: [
                          renderDivider(index),
                          SuggestionItem(
                              suggestion: widget.suggestions[index],
                              animation: animation,
                              search: widget.search),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
