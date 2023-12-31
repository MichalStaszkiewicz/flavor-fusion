import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/asset_path.dart';
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
        margin: const EdgeInsets.all(30),
        width: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
    
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholderFit: BoxFit.none,
                  placeholderFilterQuality: FilterQuality.high,
                  placeholder: AssetPath.imageLoading,
                  placeholderScale: 1,
                  image: widget.recipe.mainImage,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                )),
            Container(
              height: 55,
              width: 230,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              padding: const EdgeInsets.all(10),
              child: Container(
                child: AutoSizeText(
                  maxLines: 2,
                  widget.recipe.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
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
