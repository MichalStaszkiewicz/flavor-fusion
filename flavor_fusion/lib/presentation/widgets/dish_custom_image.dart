import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/bubble_icon_button.dart';
import 'package:flutter/material.dart';

class DishCustomImage extends StatefulWidget {
  DishCustomImage({required this.opacity});
  double opacity;

  @override
  State<DishCustomImage> createState() => _DishCustomImageState();
}

class _DishCustomImageState extends State<DishCustomImage> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.opacity,
      child: Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://hips.hearstapps.com/hmg-prod/images/221011-delish-seo-chili-cheese-sweet-potato-casserole-0288-eb-1-1666030912.jpg'),
          )),
          height: 340,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: BubbleIconButton(
                    icon: Icons.arrow_back,
                    iconColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                BubbleIconButton(
                  icon: Icons.favorite,
                  iconColor: Colors.red,
                ),
              ],
            ),
          )),
    );
  }
}
