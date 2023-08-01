import 'package:auto_route/auto_route.dart';
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
            DishDetailsRoute(name: widget.recipe.label, recipe: widget.recipe));
      },
      child: Container(
          margin: EdgeInsets.all(20),
          width: 230,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ]),
          child: Column(children: [
            Expanded(
                flex: 13,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5))))),
            Expanded(
                flex: 16,
                child: Container(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          widget.recipe.label,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 17),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                              size: 20,
                              Icons.star,
                              color: Color.fromARGB(255, 248, 228, 49)),
                          Icon(Icons.star,
                              size: 20,
                              color: Color.fromARGB(255, 248, 228, 49)),
                          Icon(Icons.star,
                              size: 20,
                              color: Color.fromARGB(255, 248, 228, 49)),
                          Icon(Icons.star,
                              size: 20,
                              color: Color.fromARGB(255, 248, 228, 49)),
                          Icon(Icons.star,
                              size: 20,
                              color: Color.fromARGB(255, 248, 228, 49)),
                          SizedBox(
                            width: 10,
                          ),
                          Text('107'),
                        ],
                      ),
                      CustomPaint(
                        key: dottedDecorationKey,
                        painter: DottedDecoration(
                            objectPosition:
                                dottedDecorationPosition ?? Offset.zero),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'recipe by ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: widget.recipe.author,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            size: 15,
                            Icons.timer,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${widget.recipe.totalTime} minutes',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                )))
          ])),
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
