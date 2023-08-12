import 'package:flavor_fusion/presentation/widgets/selected_ingredients_list.dart';
import 'package:flavor_fusion/presentation/widgets/suggestions_list.dart';
import 'package:flutter/material.dart';

class RecipesSearchBar extends StatefulWidget {
  RecipesSearchBar(
      {super.key,
      required this.suggestions,
      required this.selectedIngredients,
      required this.ingredientsOpacity,
      required this.suggestionsOpacity,
      required this.search});
  List<String> suggestions;

  List<String> selectedIngredients;

  double ingredientsOpacity;

  double suggestionsOpacity;
  String search;

  @override
  State<RecipesSearchBar> createState() => _RecipesSearchBarState();
}

class _RecipesSearchBarState extends State<RecipesSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('recipes_search'),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      widget.selectedIngredients.isNotEmpty
                          ? SelectedIngredientsList(
                              opacity: widget.ingredientsOpacity,
                            )
                          : Container(),
                      widget.suggestions.isNotEmpty
                          ? SuggestionsList(
                              search: widget.search,
                              opacity: widget.suggestionsOpacity,
                              suggestions: widget.suggestions,
                            )
                          : Container(),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
