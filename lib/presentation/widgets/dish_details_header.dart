import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';
import 'recipe_details_button.dart';

class DishDetailsHeader extends StatefulWidget {
  DishDetailsHeader({required this.label});
  String label;
  @override
  State<DishDetailsHeader> createState() => _DishDetailsHeaderState();
}

class _DishDetailsHeaderState extends State<DishDetailsHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
