import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem(
      {super.key,
      required this.suggestion,
      required this.animation,
      required this.search});

  final String suggestion;
  final Animation<double> animation;
  final String search;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        height: 50,
        child: RichText(
          text: TextSpan(
            text: '',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              ...locator<Global>().boldSuggestion(suggestion, search, context)
            ],
          ),
        ),
      ),
    );
  }
}
