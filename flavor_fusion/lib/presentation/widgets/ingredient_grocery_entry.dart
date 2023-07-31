import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe_ingredient.dart';

class IngredientGroceryEntry extends ConsumerStatefulWidget {
  IngredientGroceryEntry(
      {required this.ingredient,
      required this.recipeIndex,
      required this.ingredientIndex});
  RecipeIngredient ingredient;
  int recipeIndex;
  int ingredientIndex;

  @override
  IngredientGroceryEntryState createState() => IngredientGroceryEntryState();
}

class IngredientGroceryEntryState extends ConsumerState<IngredientGroceryEntry>
    with TickerProviderStateMixin {
  late AnimationController _animatedTextDecorationController;
  late AnimationController _opacityAnimationController;
  late Animation _textDecorationAnimation;
  late Animation _opacityAnimation;

  @override
  void initState() {
    _animatedTextDecorationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 2),
        reverseDuration: Duration(milliseconds: 300));
    _opacityAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _textDecorationAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_animatedTextDecorationController)
      ..addListener(() {
        setState(() {});
      });
    _opacityAnimation =
        Tween<double>(begin: 1, end: 0.2).animate(_opacityAnimationController)
          ..addListener(() {
            setState(() {});
            if (_opacityAnimationController.isCompleted) {
              ref.read(groceryViewModel.notifier).updateIngredientStatus(
                  widget.recipeIndex,
                  widget.ingredientIndex,
                  !widget.ingredient.owned);
              _opacityAnimationController.reverse();
            }
            if (_opacityAnimationController.isDismissed) {}
          });
    super.initState();
  }

  @override
  void dispose() {
    _animatedTextDecorationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            _opacityAnimationController.forward();

            if (_animatedTextDecorationController.status ==
                    AnimationStatus.forward ||
                _animatedTextDecorationController.status ==
                    AnimationStatus.completed) {
              _animatedTextDecorationController.reverse();
            } else {
              _animatedTextDecorationController.forward();
            }
          },
          child: CustomPaint(
            painter: AnimatedTextDecoration(
                progress: _animatedTextDecorationController.value,
                text: widget.ingredient.name,
                style: Theme.of(context).textTheme.labelLarge!,
                lineThrough: widget.ingredient.owned),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: widget.ingredient.owned
                      ? Colors.black87
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: Color.fromARGB(169, 44, 53, 57)
                          .withOpacity(_opacityAnimation.value),
                      width: 2)),
              child: Center(
                child: Icon(
                  size: 20,
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              widget.ingredient.name,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: widget.ingredient.owned ? Colors.grey : Colors.black),
            )),
      ],
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
//TODO implement correct animation ( line through text and reverse)
    if (lineThrough) {
      canvas.translate(65, 13);
      canvas.drawLine(Offset.zero, Offset(progress * textWidth, 0), paint);
    } else {
      canvas.translate(65, 13);
      canvas.drawLine(Offset(progress * textWidth, 0), Offset.zero, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
