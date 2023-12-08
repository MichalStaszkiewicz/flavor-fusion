import 'package:flutter/material.dart';

class RecipeNameRow extends StatelessWidget {
  final String recipeName;

  const RecipeNameRow(this.recipeName);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      width: double.infinity,
      child: Text(
        textAlign: TextAlign.left,
        maxLines: 1,
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
