import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/dish_custom_image.dart';
import '../../../widgets/dish_details.dart';
import '../recipe_details_view_model.dart';

class DishDetailsScreenReady extends ConsumerStatefulWidget {
  DishDetailsScreenReady({super.key, required this.recipe});

  Recipe recipe;
  @override
  DishDetailsScreenReadyState createState() => DishDetailsScreenReadyState();
}

class DishDetailsScreenReadyState
    extends ConsumerState<DishDetailsScreenReady> {
  

  double imageOpacity = 1.0;
  int opacityIterator = 0;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      const maxOpacityChange = 0.986;
      const maxScroll = 300.0;
      final currentScroll = _scrollController.offset;
      final newImageOpacity =
          1.0 - (currentScroll / maxScroll) * maxOpacityChange;

      imageOpacity = newImageOpacity.clamp(0.0, 1.0);
      // print(imageOpacity);

      setState(() {});
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(children: [
            DishCustomImage(
              opacity: imageOpacity,
              recipe: widget.recipe,
            ),
            DishDetails(
           
              recipe: widget.recipe,
            ),
          ]),
        ),
      ),
    ]);
  }
}
