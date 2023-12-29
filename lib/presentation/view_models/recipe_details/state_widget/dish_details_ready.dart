import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/recipe.dart';

class DishDetailsReadyWidget extends ConsumerStatefulWidget {
  const DishDetailsReadyWidget({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  ConsumerState<DishDetailsReadyWidget> createState() =>
      DishDetailsReadyWidgetState();
}

class DishDetailsReadyWidgetState
    extends ConsumerState<DishDetailsReadyWidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(searchBarModel.notifier).toggleAppBar(false, true);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IgnorePointer(
          child: Container(
            height: 300,
            color: Colors.transparent,
          ),
        ),
        DishDetailsContent(
          recipe: widget.recipe,
          ref: ref,
        ),
      ],
    );
  }
}
