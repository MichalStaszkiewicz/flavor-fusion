
import 'package:flutter/material.dart';

class RecipeSearchHeader extends StatelessWidget {
  RecipeSearchHeader({required this.label});
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.black),
        textAlign: TextAlign.left,
      ),
    );
  }
}

