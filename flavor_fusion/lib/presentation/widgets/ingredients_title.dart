import 'package:flutter/material.dart';

class IngredientsTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        'Ingrediants',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
