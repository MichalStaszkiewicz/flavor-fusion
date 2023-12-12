import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RecipeNameRow extends StatelessWidget {
  final String recipeName;

  const RecipeNameRow(this.recipeName);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      width: double.infinity,
      child: AutoSizeText(
        textAlign: TextAlign.left,
        maxFontSize: 23,
        maxLines: 2,
        recipeName,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              overflow: TextOverflow.visible,
            ),
      ),
    );
  }
}
