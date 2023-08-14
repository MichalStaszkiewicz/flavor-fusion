import 'package:flutter/material.dart';

class DishDetailsIngredientChip extends StatelessWidget {
  DishDetailsIngredientChip(
      {super.key, required this.color, required this.label});
  Color color;
  String label;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Container(
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(letterSpacing: 0.5, color: color),
            ),
          ),
        ),
      ),
    );
  }
}
