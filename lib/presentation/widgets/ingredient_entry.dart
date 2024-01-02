import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe_ingredient.dart';
import '../../utility/global.dart';

class IngredientEntry extends ConsumerStatefulWidget {
  IngredientEntry(
      {required this.ingredient,
      required this.recipeIndex,
      required this.ingredientIndex,
      required this.ingredientLine,
      super.key});
  RecipeIngredient ingredient;
  int recipeIndex;
  int ingredientIndex;
  String ingredientLine;

  @override
  IngredientGroceryEntryState createState() => IngredientGroceryEntryState();
}

class IngredientGroceryEntryState extends ConsumerState<IngredientEntry>
    with TickerProviderStateMixin {
  late AnimationController _sizeTransitionController;
  late Animation<double> _sizeAnimation;
  late AnimationController _animationController;

  late Animation _opacityAnimation;

  @override
  void initState() {
    _sizeTransitionController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    _sizeAnimation =
        Tween<double>(begin: 1, end: 0).animate(_sizeTransitionController)
          ..addListener(() {
            setState(() {});
          });
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 250),
        reverseDuration: const Duration(milliseconds: 250));

    _opacityAnimation =
        Tween<double>(begin: 1, end: 0).animate(_animationController)
          ..addListener(() async {
            setState(() {});
          });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _sizeTransitionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> ingredientLineMeasureInfo =
        locator<Global>().ingredientLineToMeasurement(widget.ingredientLine);
    String measurement = ingredientLineMeasureInfo.keys.elementAt(0);

    String count = ingredientLineMeasureInfo.values.elementAt(0);
    return FadeTransition(
      opacity: _sizeAnimation,
      child: SizeTransition(
        sizeFactor: _sizeAnimation,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(vertical: 5),
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                  color: widget.ingredient.owned
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                  width: 1.0),
            ),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    ref.read(groceryViewModel.notifier).updateIngredientStatus(
                        widget.recipeIndex,
                        widget.ingredientIndex,
                        !widget.ingredient.owned,
                        _sizeTransitionController);
                    if (widget.ingredient.owned) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }
                  },
                  child: CustomPaint(
                    painter: AnimatedTextDecoration(
                        progress: _animationController.value,
                        text: widget.ingredient.description.name,
                        style: Theme.of(context).textTheme.labelLarge!,
                        lineThrough: widget.ingredient.owned),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: widget.ingredient.owned
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color.fromARGB(169, 44, 53, 57)
                                  .withOpacity(_opacityAnimation.value),
                              width: 2)),
                      child: const Center(
                        child: Icon(
                          size: 20,
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        widget.ingredient.description.name,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: widget.ingredient.owned
                                ? Colors.grey
                                : Colors.black),
                      )),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        "$count $measurement",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.grey),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedTextDecoration extends CustomPainter {
  AnimatedTextDecoration(
      {required this.progress,
      required this.text,
      required this.style,
      required this.lineThrough});
  double progress;
  String text;
  TextStyle style;
  bool lineThrough;
  @override
  void paint(Canvas canvas, Size size) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        textAlign: TextAlign.left,
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout();
    double textWidth = textPainter.size.width;

    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    if (lineThrough) {
      canvas.translate(65, size.height / 2);
      canvas.drawLine(Offset.zero, Offset(progress * textWidth, 0), paint);
    } else {
      canvas.translate(65, size.height / 2);
      canvas.drawLine(Offset(progress * textWidth, 0), Offset.zero, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
