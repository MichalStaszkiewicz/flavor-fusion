import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IngredientChip extends ConsumerStatefulWidget {
  IngredientChip(
      {required this.onDeleted, required this.label, required this.key});
  String label;
  Function onDeleted;
  final Key key;
  @override
  IngredientChipState createState() => IngredientChipState();
}

class IngredientChipState extends ConsumerState<IngredientChip>
    with TickerProviderStateMixin {
  late AnimationController _sizeAnimationController;
  late AnimationController _opacityAnimationController;
  late Animation<double> _sizeAnimation;
  late Animation<double> _opacityAnimation;
  @override
  void initState() {
    _opacityAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _sizeAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_opacityAnimationController)
          ..addListener(() {
            setState(() {});
          });
    _sizeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_sizeAnimationController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  bool sizeAnimationDone = false;
  bool animationSetToEnd = false;
  @override
  void dispose() {
    _sizeAnimationController.dispose();
    _opacityAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(recipesViewModel).maybeWhen(
        search: (suggestions, ingredients, search, searching, skillType,
            mealType, allowAnimations) {
          if (!allowAnimations) {
            print("animations are not allowed: " +
                _sizeAnimationController.status.toString());
            if (!animationSetToEnd) {
              _sizeAnimationController.value = 1.0;
              _opacityAnimationController.value = 1.0;
              animationSetToEnd = true;
            }

            print("animations are not allowed: " +
                _sizeAnimationController.status.toString());
          } else {
            if (!sizeAnimationDone) {
              _sizeAnimationController.forward().then((value) {
                sizeAnimationDone = true;

                _opacityAnimationController.forward();
              });
            }
          }
        },
        orElse: () => {});
    return FadeTransition(
      opacity: _opacityAnimation,
      child: SizeTransition(
        axis: Axis.horizontal,
        sizeFactor: _sizeAnimation,
        child: Container(
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
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        widget.label,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _opacityAnimationController.reverse().then((value) {
                        _sizeAnimationController
                            .reverse()
                            .then((value) => widget.onDeleted());
                      });
                    },
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
