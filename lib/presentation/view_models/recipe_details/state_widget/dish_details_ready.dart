import 'package:flavor_fusion/presentation/widgets/dish_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/recipe.dart';

class DishDetailsReadyWidget extends StatelessWidget {
  const DishDetailsReadyWidget({
    super.key,
    required this.recipe,
    required this.ref,
  });

  final Recipe recipe;

  final WidgetRef ref;

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
          recipe: recipe,
          ref: ref,
        ),
      ],
    );
  }
}