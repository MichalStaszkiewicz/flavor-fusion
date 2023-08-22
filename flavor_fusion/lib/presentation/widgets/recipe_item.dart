import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';

class RecipeItem extends StatefulWidget {
  RecipeItem({super.key, required this.recipe});
  Recipe recipe;
  @override
  State<RecipeItem> createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {
  final GlobalKey dottedDecorationKey = GlobalKey();

  Offset? dottedDecorationPosition;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _getDottedDecorationPosition();
    });
  }

  void _getDottedDecorationPosition() {
    RenderBox? dottedDecorationBox =
        dottedDecorationKey.currentContext?.findRenderObject() as RenderBox?;
    if (dottedDecorationBox != null) {
      dottedDecorationPosition = dottedDecorationBox.localToGlobal(Offset.zero);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
            DishDetailsRoute(name: widget.recipe.name, recipe: widget.recipe));
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.all(20),
        width: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(widget.recipe.mainImage)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Container(
          height: 50,
          width: 230,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          padding: const EdgeInsets.all(10),
          child: Container(
            child: AutoSizeText(
              maxLines: 1,
              widget.recipe.name,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class DottedDecoration extends CustomPainter {
  final Offset objectPosition;
  DottedDecoration({required this.objectPosition});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final double startX = 0.0;
    final double startY = size.height / 2;

    final double endX = 220;
    final double endY = size.height / 2;

    final double distance = 15;
    double currentX = startX;

    while (currentX < endX) {
      final double x1 = currentX;
      final double x2 = currentX + 2;
      final double y1 = startY;
      final double y2 = startY;

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);

      currentX += distance;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
