import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../view_models/recipe_details/recipe_details_view_model.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    required this.description,
    required this.expanded,
    required this.ref,
  });

  final String description;
  final bool expanded;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          height: expanded
              ? ref.read(recipeDetailsViewModel.notifier).descriptionHeight
              : 40,
          duration: const Duration(milliseconds: 700),
          child: Text(
            description,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: locator<Global>().greyText),
            maxLines: null,
            overflow: expanded ? TextOverflow.fade : null,
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              ref
                  .read(recipeDetailsViewModel.notifier)
                  .setDescriptionExpand(description);
            },
            child: Container(
              alignment: Alignment.bottomRight,
              height: 30,
              child: Text(!expanded ? "View more" : "View less"),
            ),
          ),
        ),
      ],
    );
  }
}
