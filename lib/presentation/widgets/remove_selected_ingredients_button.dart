import 'package:flavor_fusion/data/models/recipe_ingredient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/grocery.dart';
import '../view_models/groceries/groceries_view_model.dart';

class RemoveSelectedIngredientsButton extends StatelessWidget {
  RemoveSelectedIngredientsButton(
      {super.key,
      required this.ref,
      required this.opacity,
      required this.selectedIngredients,
      required this.groceries});

  final WidgetRef ref;
  final Animation<double> opacity;

  int selectedIngredients;
  List<Grocery> groceries;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ref.read(groceryViewModel.notifier).removeSelected();
      },
      child: FadeTransition(
        opacity: opacity,
        child: IgnorePointer(
          ignoring: selectedIngredients > 0 ? false : true,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
                color: const Color.fromARGB(255, 86, 144, 245),
                borderRadius: BorderRadius.circular(5)),
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Delete Selected ($selectedIngredients)',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Colors.white, letterSpacing: 0.5, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
