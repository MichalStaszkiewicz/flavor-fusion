import 'package:flavor_fusion/presentation/widgets/dish_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/recipe.dart';

class DishDetailsReadyWidget extends StatelessWidget {
  const DishDetailsReadyWidget({
    super.key,
    required this.recipe,
    required this.description,
    required this.expanded,
    required this.ref,
  });

  final Recipe recipe;
  final String description;
  final bool expanded;
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
          description: description,
          expanded: expanded,
          ref: ref,
        ),
      ],
    );
  }
}
