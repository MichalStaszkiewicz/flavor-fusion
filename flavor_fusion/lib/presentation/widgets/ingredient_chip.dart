import 'package:flutter/material.dart';

class IngredientChip extends StatelessWidget {
  IngredientChip({required this.onDeleted, required this.label});
  String label;
  VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromRGBO(51, 51, 51, 1),
          width: 2,
        ),
      ),
      child: IntrinsicWidth(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: onDeleted,
                child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Icon(
                      size: 20,
                      Icons.close,
                    )),
              ),
            ],
          ),
        ),
      ),
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
