import 'package:flavor_fusion/presentation/widgets/suggestion_item.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../screens/recipes_screen.dart';
import '../view_models/recipes/recipes_view_model.dart';

class SuggestionsList extends ConsumerStatefulWidget {
  SuggestionsList(
      {super.key,
      required this.search,
      required this.suggestions,
      required this.opacity});

  List<String> suggestions;
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
          Container(
            width: double.infinity,
            child: Text(
              "Suggestions",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black),
              textAlign: TextAlign.left,
            ),
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
                    ref.read(recipesViewModel.notifier).addSelectedIngredient(
                        locator<Global>()
                            .capitalize(widget.suggestions[index]));
                  },
                  child: SuggestionItem(
                      suggestion: widget.suggestions[index],
                      animation: animation,
                      search: widget.search)))
        ],
      ),
    );
  }
}
