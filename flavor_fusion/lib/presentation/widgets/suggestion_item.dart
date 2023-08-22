import 'package:flavor_fusion/utility/enums.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';

import '../../data/models/suggestion.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem(
      {super.key,
      required this.suggestion,
      required this.animation,
      required this.search});

  final Suggestion suggestion;
  final Animation<double> animation;
  final String search;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: '',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  ...locator<Global>()
                      .boldSuggestion(suggestion.name, search, context),
                ],
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: suggestion.type == SuggestionType.ingredient
                    ? Colors.green.withOpacity(0.3)
                    : Colors.red.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  locator<Global>().capitalize(suggestion.type.name),
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: suggestion.type == SuggestionType.ingredient
                            ? Colors.green
                            : Colors.red,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
