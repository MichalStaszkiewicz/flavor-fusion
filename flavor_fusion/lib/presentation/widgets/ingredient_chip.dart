import 'package:flutter/material.dart';

class IngredientChip extends StatelessWidget {
  IngredientChip({required this.onDeleted, required this.label});
  String label;
  VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      shadowColor: const Color.fromARGB(255, 163, 155, 155),
      elevation: 2,
      onDeleted: onDeleted,
      label: Text(label),
      side: const BorderSide(
          color: Color.fromRGBO(51, 51, 51, 1),
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter),
      deleteIcon: const Icon(size: 20, Icons.close),
      shape: CustomChipBorderShape(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class CustomChipBorderShape extends RoundedRectangleBorder {
  final BorderRadiusGeometry borderRadius;

  CustomChipBorderShape({required this.borderRadius})
      : super(borderRadius: borderRadius);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(4);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
  }
}
