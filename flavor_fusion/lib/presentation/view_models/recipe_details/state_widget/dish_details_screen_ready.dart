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
  String lorem =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.';

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
              description: lorem,
              recipe: widget.recipe,
            ),
          ]),
        ),
      ),
    ]);
  }
}
