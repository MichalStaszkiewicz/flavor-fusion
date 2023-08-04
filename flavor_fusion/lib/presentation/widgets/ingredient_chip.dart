import 'package:flutter/material.dart';

class IngredientChip extends StatefulWidget {
  IngredientChip(
      {required this.onDeleted, required this.label, required this.key});
  String label;
  Function onDeleted;
  final Key key;
  @override
  State<IngredientChip> createState() => _IngredientChipState();
}

class _IngredientChipState extends State<IngredientChip>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation =
        Tween<double>(begin: 0.1, end: 1.0).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
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
                    child: Text(
                      widget.label,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _animationController
                        .reverse()
                        .then((value) => widget.onDeleted());
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
