import 'package:flavor_fusion/presentation/widgets/recipe_search_header.dart';
import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/suggestion.dart';
import '../../utility/app_router.dart';
import '../../utility/enums.dart';
import '../../utility/global.dart';
import '../screens/recipes_screen.dart';
import '../view_models/recipes/recipes_view_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.opacity,
      child: Column(
        children: [
          RecipeSearchHeader(
            label: "Suggestions",
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
                  onTap: () {
                    if (widget.suggestions[index].type ==
                        SuggestionType.ingredient) {
                      ref.read(recipesViewModel.notifier).addSelectedIngredient(
                          locator<Global>()
                              .capitalize(widget.suggestions[index].name));
                    } else {
                      locator<AppRouter>().push(DishDetailsRoute(
                          name: widget.suggestions[index].name,
                          recipe: widget.suggestions[index].recipe!));
                    }
                  },
                  child: Column(
                    children: [
                      index == 0 || index == widget.suggestions.length
                          ? Container()
                          : Container(
                              color: Colors.black.withOpacity(0.3),
                              height: 1,
                            ),
                      SuggestionItem(
                          suggestion: widget.suggestions[index],
                          animation: animation,
                          search: widget.search),
                    ],
                  )))
        ],
      ),
    );
  }
}
